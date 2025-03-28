import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webspark_test/models/result_item.dart';

part 'result_response.freezed.dart';
part 'result_response.g.dart';

@freezed
abstract class ResultResponse with _$ResultResponse {
  const factory ResultResponse({
    required bool error,
    required String message,
    required List<ResultItem> data,
  }) = _ResultResponse;

  factory ResultResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultResponseFromJson(json);
}
