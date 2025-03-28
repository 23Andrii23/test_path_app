import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webspark_test/models/path_data.model.dart';

part 'main_response.model.freezed.dart';
part 'main_response.model.g.dart';

@freezed
abstract class MainResponse with _$MainResponse {
  const factory MainResponse({
    required bool error,
    required String message,
    required List<PathData> data,
  }) = _MainResponse;

  factory MainResponse.fromJson(Map<String, dynamic> json) =>
      _$MainResponseFromJson(json);
}
