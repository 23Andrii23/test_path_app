import 'package:flutter/material.dart';
import 'package:webspark_test/models/custom_point.model.dart';
import 'package:webspark_test/models/main_response.model.dart';

class PreviewScreen extends StatelessWidget {
  final MainResponse mainResponse;
  final String pathString;
  final String pathId;

  const PreviewScreen({
    required this.mainResponse,
    required this.pathString,
    required this.pathId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pathData = mainResponse.data.firstWhere(
      (element) => element.id == pathId,
      orElse: () => throw Exception('Path data not found for ID: $pathId'),
    );

    final List<CustomPoint> pathPoints = _parsePathString(pathString);
    final gridSize = _determineGridSize(pathData.field);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Preview screen'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: gridSize.width / gridSize.height,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: _buildGrid(
                gridSize: gridSize,
                field: pathData.field,
                start: pathData.start,
                end: pathData.end,
                path: pathPoints,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Text(
              pathString,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  List<CustomPoint> _parsePathString(String pathString) {
    final pointStrings = pathString.split('->');
    return pointStrings.map((pointStr) {
      final coords =
          pointStr.replaceAll('(', '').replaceAll(')', '').split(',');

      return CustomPoint(
        x: int.parse(coords[0]),
        y: int.parse(coords[1]),
      );
    }).toList();
  }

  Size _determineGridSize(List<String> field) {
    final height = field.length;
    final width = height > 0 ? field[0].length : 0;
    return Size(width.toDouble(), height.toDouble());
  }

  Widget _buildGrid({
    required Size gridSize,
    required List<String> field,
    required CustomPoint start,
    required CustomPoint end,
    required List<CustomPoint> path,
  }) {
    return Column(
      children: List.generate(
        gridSize.height.toInt(),
        (y) => Expanded(
          child: Row(
            children: List.generate(
              gridSize.width.toInt(),
              (x) {
                final isStart = x == start.x && y == start.y;
                final isEnd = x == end.x && y == end.y;
                final isBlocked = y < field.length &&
                    x < field[y].length &&
                    field[y][x] == 'X';
                final isPath =
                    path.any((point) => point.x == x && point.y == y);

                Color cellColor = Colors.white;
                if (isStart) {
                  cellColor = Color(0xFF64FFDA);
                } else if (isEnd) {
                  cellColor = Color(0xFF009688);
                } else if (isBlocked) {
                  cellColor = Color(0xFF000000);
                } else if (isPath) {
                  cellColor = Color(0xFF4CAF50);
                }

                return Expanded(
                  child: Container(
                    margin: EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                      color: cellColor,
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '($x,$y)',
                            style: TextStyle(
                              fontSize: 12,
                              color: isBlocked ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
