// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cell.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cell {
  int get x;
  int get y;
  double get g;
  double get h;
  Cell? get parent;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CellCopyWith<Cell> get copyWith =>
      _$CellCopyWithImpl<Cell>(this as Cell, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Cell &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.g, g) || other.g == g) &&
            (identical(other.h, h) || other.h == h) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y, g, h, parent);

  @override
  String toString() {
    return 'Cell(x: $x, y: $y, g: $g, h: $h, parent: $parent)';
  }
}

/// @nodoc
abstract mixin class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) _then) =
      _$CellCopyWithImpl;
  @useResult
  $Res call({int x, int y, double g, double h, Cell? parent});

  $CellCopyWith<$Res>? get parent;
}

/// @nodoc
class _$CellCopyWithImpl<$Res> implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._self, this._then);

  final Cell _self;
  final $Res Function(Cell) _then;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? g = null,
    Object? h = null,
    Object? parent = freezed,
  }) {
    return _then(_self.copyWith(
      x: null == x
          ? _self.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      g: null == g
          ? _self.g
          : g // ignore: cast_nullable_to_non_nullable
              as double,
      h: null == h
          ? _self.h
          : h // ignore: cast_nullable_to_non_nullable
              as double,
      parent: freezed == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Cell?,
    ));
  }

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CellCopyWith<$Res>? get parent {
    if (_self.parent == null) {
      return null;
    }

    return $CellCopyWith<$Res>(_self.parent!, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }
}

/// @nodoc

class _Cell implements Cell {
  const _Cell(
      {required this.x, required this.y, this.g = 0, this.h = 0, this.parent});

  @override
  final int x;
  @override
  final int y;
  @override
  @JsonKey()
  final double g;
  @override
  @JsonKey()
  final double h;
  @override
  final Cell? parent;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CellCopyWith<_Cell> get copyWith =>
      __$CellCopyWithImpl<_Cell>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cell &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.g, g) || other.g == g) &&
            (identical(other.h, h) || other.h == h) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y, g, h, parent);

  @override
  String toString() {
    return 'Cell(x: $x, y: $y, g: $g, h: $h, parent: $parent)';
  }
}

/// @nodoc
abstract mixin class _$CellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$CellCopyWith(_Cell value, $Res Function(_Cell) _then) =
      __$CellCopyWithImpl;
  @override
  @useResult
  $Res call({int x, int y, double g, double h, Cell? parent});

  @override
  $CellCopyWith<$Res>? get parent;
}

/// @nodoc
class __$CellCopyWithImpl<$Res> implements _$CellCopyWith<$Res> {
  __$CellCopyWithImpl(this._self, this._then);

  final _Cell _self;
  final $Res Function(_Cell) _then;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? g = null,
    Object? h = null,
    Object? parent = freezed,
  }) {
    return _then(_Cell(
      x: null == x
          ? _self.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      g: null == g
          ? _self.g
          : g // ignore: cast_nullable_to_non_nullable
              as double,
      h: null == h
          ? _self.h
          : h // ignore: cast_nullable_to_non_nullable
              as double,
      parent: freezed == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Cell?,
    ));
  }

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CellCopyWith<$Res>? get parent {
    if (_self.parent == null) {
      return null;
    }

    return $CellCopyWith<$Res>(_self.parent!, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }
}

// dart format on
