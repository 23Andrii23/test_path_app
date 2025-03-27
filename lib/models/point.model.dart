import 'package:freezed_annotation/freezed_annotation.dart';

part 'point.model.freezed.dart';
part 'point.model.g.dart';

@freezed
abstract class Point with _$Point {
  const factory Point({
    required int x,
    required int y,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);
}
