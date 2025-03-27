// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'path_data.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PathData {
  String get id;
  List<String> get field;
  Point get start;
  Point get end;

  /// Create a copy of PathData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PathDataCopyWith<PathData> get copyWith =>
      _$PathDataCopyWithImpl<PathData>(this as PathData, _$identity);

  /// Serializes this PathData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PathData &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.field, field) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(field), start, end);

  @override
  String toString() {
    return 'PathData(id: $id, field: $field, start: $start, end: $end)';
  }
}

/// @nodoc
abstract mixin class $PathDataCopyWith<$Res> {
  factory $PathDataCopyWith(PathData value, $Res Function(PathData) _then) =
      _$PathDataCopyWithImpl;
  @useResult
  $Res call({String id, List<String> field, Point start, Point end});

  $PointCopyWith<$Res> get start;
  $PointCopyWith<$Res> get end;
}

/// @nodoc
class _$PathDataCopyWithImpl<$Res> implements $PathDataCopyWith<$Res> {
  _$PathDataCopyWithImpl(this._self, this._then);

  final PathData _self;
  final $Res Function(PathData) _then;

  /// Create a copy of PathData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? field = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _self.field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as Point,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }

  /// Create a copy of PathData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get start {
    return $PointCopyWith<$Res>(_self.start, (value) {
      return _then(_self.copyWith(start: value));
    });
  }

  /// Create a copy of PathData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get end {
    return $PointCopyWith<$Res>(_self.end, (value) {
      return _then(_self.copyWith(end: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PathData implements PathData {
  const _PathData(
      {required this.id,
      required final List<String> field,
      required this.start,
      required this.end})
      : _field = field;
  factory _PathData.fromJson(Map<String, dynamic> json) =>
      _$PathDataFromJson(json);

  @override
  final String id;
  final List<String> _field;
  @override
  List<String> get field {
    if (_field is EqualUnmodifiableListView) return _field;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_field);
  }

  @override
  final Point start;
  @override
  final Point end;

  /// Create a copy of PathData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PathDataCopyWith<_PathData> get copyWith =>
      __$PathDataCopyWithImpl<_PathData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PathDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PathData &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._field, _field) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_field), start, end);

  @override
  String toString() {
    return 'PathData(id: $id, field: $field, start: $start, end: $end)';
  }
}

/// @nodoc
abstract mixin class _$PathDataCopyWith<$Res>
    implements $PathDataCopyWith<$Res> {
  factory _$PathDataCopyWith(_PathData value, $Res Function(_PathData) _then) =
      __$PathDataCopyWithImpl;
  @override
  @useResult
  $Res call({String id, List<String> field, Point start, Point end});

  @override
  $PointCopyWith<$Res> get start;
  @override
  $PointCopyWith<$Res> get end;
}

/// @nodoc
class __$PathDataCopyWithImpl<$Res> implements _$PathDataCopyWith<$Res> {
  __$PathDataCopyWithImpl(this._self, this._then);

  final _PathData _self;
  final $Res Function(_PathData) _then;

  /// Create a copy of PathData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? field = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_PathData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _self._field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as Point,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }

  /// Create a copy of PathData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get start {
    return $PointCopyWith<$Res>(_self.start, (value) {
      return _then(_self.copyWith(start: value));
    });
  }

  /// Create a copy of PathData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get end {
    return $PointCopyWith<$Res>(_self.end, (value) {
      return _then(_self.copyWith(end: value));
    });
  }
}

// dart format on
