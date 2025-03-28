import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webspark_test/models/custom_point.model.dart';
import 'package:webspark_test/models/main_response.model.dart';
import 'package:webspark_test/models/path_data.model.dart';
import 'package:webspark_test/models/result_response.dart';
import 'package:webspark_test/screens/process_screen/path_finder/path_finder.dart';
import 'package:webspark_test/services/http_service.dart';

part 'process_screen.controller.freezed.dart';
part 'process_screen.controller.g.dart';

enum ProcessingState { initial, loading, processing, completed, error }

@freezed
abstract class ProcessState with _$ProcessState {
  const factory ProcessState({
    required ProcessingState state,
    required int progress,
    String? errorMessage,
    MainResponse? mainResponse,
    List<PathData>? results,
    Map<String, List<CustomPoint>>? paths,
  }) = _ProcessState;

  factory ProcessState.initial() => const ProcessState(
        state: ProcessingState.initial,
        progress: 0,
      );
}

@riverpod
class ProcessScreenController extends _$ProcessScreenController {
  final _httpService = HttpService();

  @override
  ProcessState build(String apiUrl) {
    return ProcessState.initial();
  }

  Future<void> loadData() async {
    state = state.copyWith(state: ProcessingState.loading);

    try {
      final response = await _httpService.getMainData(apiUrl);
      state = state.copyWith(
        state: ProcessingState.initial,
        mainResponse: response,
      );

      await startProcessing();
    } catch (e) {
      state = state.copyWith(
        state: ProcessingState.error,
        errorMessage: 'Failed to load data: ${e.toString()}',
      );
    }
  }

  Future<void> startProcessing() async {
    if (state.mainResponse == null) {
      state = state.copyWith(
        state: ProcessingState.error,
        errorMessage: 'No data to process',
      );
      return;
    }

    state = state.copyWith(state: ProcessingState.processing);

    try {
      final paths = state.mainResponse!.data;
      final results = <PathData>[];
      final shortestPaths = <String, List<CustomPoint>>{};

      for (int i = 0; i < paths.length; i++) {
        final path = paths[i];

        final shortestPath = await _processPath(path);
        shortestPaths[path.id] = shortestPath;

        results.add(path);
        final progress = ((i + 1) / paths.length * 100).floor();
        state = state.copyWith(progress: progress);
      }

      state = state.copyWith(
        state: ProcessingState.completed,
        progress: 100,
        results: results,
        paths: shortestPaths,
      );
    } catch (e) {
      state = state.copyWith(
        state: ProcessingState.error,
        errorMessage: e.toString(),
      );
    }
  }

  Future<List<CustomPoint>> _processPath(PathData path) async {
    await Future.delayed(Duration(milliseconds: 100));

    final start = CustomPoint(x: path.start.x, y: path.start.y);
    final end = CustomPoint(x: path.end.x, y: path.end.y);

    final shortestPath = PathFinder.findPath(
      field: path.field,
      start: start,
      end: end,
    );

    return shortestPath;
  }

  Future<ResultResponse?> sendResults() async {
    if (state.state != ProcessingState.completed ||
        state.results == null ||
        state.paths == null) {
      state = state.copyWith(
        state: ProcessingState.error,
        errorMessage: 'No results to send',
      );
      return null;
    }

    try {
      state = state.copyWith(state: ProcessingState.processing);

      final Map<String, List<CustomPoint>> idPathMap = {};

      for (final pathData in state.results!) {
        final id = pathData.id;
        final path = state.paths![id];

        if (path == null || path.isEmpty) {
          debugPrint('Warning: No path found for ID: $id');
          continue;
        }

        idPathMap[id] = path;
      }

      final result = await _httpService.postMainData(
        url: apiUrl,
        idPathMap: idPathMap,
      );

      state = state.copyWith(state: ProcessingState.completed);

      return result;
    } catch (e) {
      state = state.copyWith(
        state: ProcessingState.error,
        errorMessage: e.toString(),
      );
      return null;
    }
  }

  void reset() {
    state = ProcessState.initial();
  }
}
