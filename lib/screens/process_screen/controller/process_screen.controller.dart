// process_screen.controller.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webspark_test/models/main_response.model.dart';
import 'package:webspark_test/models/path_data.model.dart';
import 'package:webspark_test/screens/process_screen/path_finder/path_finder.dart';
import 'package:webspark_test/services/http_service.dart';

part 'process_screen.controller.freezed.dart';
part 'process_screen.controller.g.dart';

enum ProcessingState { initial, processing, completed, error }

@freezed
abstract class ProcessState with _$ProcessState {
  const factory ProcessState({
    required ProcessingState state,
    required int progress,
    String? errorMessage,
    List<PathData>? results,
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
  ProcessState build(MainResponse mainResponse) {
    return ProcessState.initial();
  }

  Future<void> startProcessing() async {
    state = state.copyWith(state: ProcessingState.processing);

    try {
      final paths = mainResponse.data;

      final results = <PathData>[];

      for (int i = 0; i < paths.length; i++) {
        final path = paths[i];
        await _processPath(path);
        results.add(path);
        final progress = ((i + 1) / paths.length * 100).floor();
        state = state.copyWith(progress: progress);
      }

      state = state.copyWith(
        state: ProcessingState.completed,
        progress: 100,
        results: results,
      );
    } catch (e) {
      state = state.copyWith(
        state: ProcessingState.error,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> _processPath(PathData path) async {
    final shortestPath = PathFinder.processPath(path);
    print('shortestPath $shortestPath');
  }

  Future<void> sendResults() async {
    if (state.state != ProcessingState.completed || state.results == null) {
      state = state.copyWith(
        state: ProcessingState.error,
        errorMessage: 'No results to send',
      );
      return;
    }

    try {
      state = state.copyWith(state: ProcessingState.processing);
      //add send here
      state = state.copyWith(state: ProcessingState.completed);
    } catch (e) {
      state = state.copyWith(
        state: ProcessingState.error,
        errorMessage: e.toString(),
      );
    }
  }

  void reset() {
    state = ProcessState.initial();
  }
}
