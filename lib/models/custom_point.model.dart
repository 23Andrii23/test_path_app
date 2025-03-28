import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_point.model.freezed.dart';
part 'custom_point.model.g.dart';

@freezed
abstract class CustomPoint with _$CustomPoint {
  const factory CustomPoint({
    required int x,
    required int y,
  }) = _CustomPoint;

  factory CustomPoint.fromJson(Map<String, dynamic> json) =>
      _$CustomPointFromJson(json);
}
