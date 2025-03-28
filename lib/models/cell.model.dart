import 'package:freezed_annotation/freezed_annotation.dart';

part 'cell.model.freezed.dart';

@freezed
abstract class Cell with _$Cell {
  const factory Cell({
    required int x,
    required int y,
    @Default(0) double g,
    @Default(0) double h,
    Cell? parent,
  }) = _Cell;
}
