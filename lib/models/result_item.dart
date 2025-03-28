import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_item.freezed.dart';
part 'result_item.g.dart';

@freezed
abstract class ResultItem with _$ResultItem {
  const factory ResultItem({
    required String id,
    required bool correct,
  }) = _ResultItem;

  factory ResultItem.fromJson(Map<String, dynamic> json) =>
      _$ResultItemFromJson(json);
}
