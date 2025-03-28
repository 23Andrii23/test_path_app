// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_point.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomPoint {
  int get x;
  int get y;

  /// Create a copy of CustomPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomPointCopyWith<CustomPoint> get copyWith =>
      _$CustomPointCopyWithImpl<CustomPoint>(this as CustomPoint, _$identity);

  /// Serializes this CustomPoint to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomPoint &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @override
  String toString() {
    return 'CustomPoint(x: $x, y: $y)';
  }
}

/// @nodoc
abstract mixin class $CustomPointCopyWith<$Res> {
  factory $CustomPointCopyWith(
          CustomPoint value, $Res Function(CustomPoint) _then) =
      _$CustomPointCopyWithImpl;
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class _$CustomPointCopyWithImpl<$Res> implements $CustomPointCopyWith<$Res> {
  _$CustomPointCopyWithImpl(this._self, this._then);

  final CustomPoint _self;
  final $Res Function(CustomPoint) _then;

  /// Create a copy of CustomPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CustomPoint implements CustomPoint {
  const _CustomPoint({required this.x, required this.y});
  factory _CustomPoint.fromJson(Map<String, dynamic> json) =>
      _$CustomPointFromJson(json);

  @override
  final int x;
  @override
  final int y;

  /// Create a copy of CustomPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomPointCopyWith<_CustomPoint> get copyWith =>
      __$CustomPointCopyWithImpl<_CustomPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomPointToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomPoint &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @override
  String toString() {
    return 'CustomPoint(x: $x, y: $y)';
  }
}

/// @nodoc
abstract mixin class _$CustomPointCopyWith<$Res>
    implements $CustomPointCopyWith<$Res> {
  factory _$CustomPointCopyWith(
          _CustomPoint value, $Res Function(_CustomPoint) _then) =
      __$CustomPointCopyWithImpl;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$CustomPointCopyWithImpl<$Res> implements _$CustomPointCopyWith<$Res> {
  __$CustomPointCopyWithImpl(this._self, this._then);

  final _CustomPoint _self;
  final $Res Function(_CustomPoint) _then;

  /// Create a copy of CustomPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_CustomPoint(
      x: null == x
          ? _self.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
