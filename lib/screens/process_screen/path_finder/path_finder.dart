import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:webspark_test/models/cell.model.dart';
import 'package:webspark_test/models/path_data.model.dart';

class PathFinder {
  static bool _validateConstraints(List<String> field) {
    if (field.isEmpty || field.length < 2 || field.length > 99) {
      return false;
    }

    final width = field[0].length;
    if (width < 2 || width > 99) {
      return false;
    }

    for (final row in field) {
      if (row.length != width) {
        return false;
      }
    }

    return true;
  }

  // Find shortest path using A* algorithm
  static List<Point<int>> findPath({
    required List<String> field,
    required Point<int> start,
    required Point<int> end,
  }) {
    if (!_validateConstraints(field)) {
      throw ArgumentError('Field size must be between 2x2 and 99x99');
    }

    final rows = field.length;
    final cols = field[0].length;

    if (start.x < 0 || start.x >= cols || start.y < 0 || start.y >= rows) {
      throw ArgumentError('Start point is out of field bounds');
    }

    if (end.x < 0 || end.x >= cols || end.y < 0 || end.y >= rows) {
      throw ArgumentError('End point is out of field bounds');
    }

    if (field[start.y][start.x] == 'X') {
      throw ArgumentError('Start point is an obstacle');
    }

    if (field[end.y][end.x] == 'X') {
      throw ArgumentError('End point is an obstacle');
    }

    // Create 2D grid representation
    List<List<bool>> grid = List.generate(
      rows,
      (i) => List.generate(
        cols,
        (j) => field[i][j] == '.',
      ),
    );

    // 8 possible movement directions (including diagonals)
    final directions = [
      [-1, -1], [-1, 0], [-1, 1], // Top row
      [0, -1], [0, 1], // Middle row (without current cell)
      [1, -1], [1, 0], [1, 1] // Bottom row
    ];

    // Create priority queue
    final openSet =
        _PathPriorityQueue((a, b) => (a.g + a.h).compareTo(b.g + b.h));

    final startCell = Cell(
      x: start.x,
      y: start.y,
      g: 0,
      h: _calculateHeuristic(start.x, start.y, end.x, end.y),
    );

    openSet.add(startCell);

    final closedSet = <Cell>{};

    final Map<String, Cell> gScore = {};
    gScore['${start.x},${start.y}'] = startCell;

    while (openSet.isEmpty == false) {
      final current = openSet.removeFirst();

      if (current.x == end.x && current.y == end.y) {
        return _reconstructPath(current);
      }

      closedSet.add(current);

      // Check all 8 directions
      for (final dir in directions) {
        final newX = current.x + dir[0];
        final newY = current.y + dir[1];

        if (newX < 0 || newX >= cols || newY < 0 || newY >= rows) {
          continue;
        }

        if (!grid[newY][newX]) {
          continue;
        }

        // Create neighbor cell
        // Calculate move cost (sqrt(2) for diagonals, 1 for straight moves)
        final moveCost = (dir[0] != 0 && dir[1] != 0) ? sqrt(2) : 1.0;

        final neighbor = Cell(
          x: newX,
          y: newY,
          g: current.g + moveCost,
          h: _calculateHeuristic(newX, newY, end.x, end.y),
          parent: current,
        );

        // Key for hash table
        final key = '$newX,$newY';

        // Skip if already visited with better path
        if (closedSet.any((cell) =>
            cell.x == newX && cell.y == newY && cell.g <= neighbor.g)) {
          continue;
        }

        // If found better path or cell not visited yet
        if (!gScore.containsKey(key) || neighbor.g < gScore[key]!.g) {
          gScore[key] = neighbor;
          openSet.removeWhere((cell) => cell.x == newX && cell.y == newY);
          openSet.add(neighbor);
        }
      }
    }

    return [];
  }

  // Euclidean distance heuristic (ideal for 8-direction movement)
  static double _calculateHeuristic(int x1, int y1, int x2, int y2) {
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
  }

  // Reconstruct path from end to start using parent references
  static List<Point<int>> _reconstructPath(Cell? current) {
    final path = <Point<int>>[];

    while (current != null) {
      path.add(Point(current.x, current.y));
      current = current.parent;
    }

    // Return path from start to end
    return path.reversed.toList();
  }

  static List<Point<int>> processPath(PathData pathData) {
    final field = pathData.field;
    final start = Point<int>(pathData.start.x, pathData.start.y);
    final end = Point<int>(pathData.end.x, pathData.end.y);

    try {
      return findPath(field: field, start: start, end: end);
    } catch (e) {
      debugPrint('Error processing path: $e');
      return [];
    }
  }
}

// Priority queue for A* algorithm
class _PathPriorityQueue {
  final List<Cell> _cells = [];
  final Comparator<Cell> _comparator;

  _PathPriorityQueue(this._comparator);

  bool get isEmpty => _cells.isEmpty;

  void add(Cell cell) {
    _cells.add(cell);
    _cells.sort(_comparator);
  }

  Cell removeFirst() {
    if (_cells.isEmpty) {
      throw StateError('Queue is empty');
    }
    return _cells.removeAt(0);
  }

  void removeWhere(bool Function(Cell) test) {
    _cells.removeWhere(test);
  }
}
