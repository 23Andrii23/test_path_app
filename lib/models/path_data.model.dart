import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webspark_test/models/point.model.dart';

part 'path_data.model.freezed.dart';
part 'path_data.model.g.dart';

@freezed
abstract class PathData with _$PathData {
  const factory PathData({
    required String id,
    required List<String> field,
    required Point start,
    required Point end,
  }) = _PathData;

  factory PathData.fromJson(Map<String, dynamic> json) =>
      _$PathDataFromJson(json);
}
