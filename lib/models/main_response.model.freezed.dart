// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainResponse {
  bool get error;
  String get message;
  List<PathData> get data;

  /// Create a copy of MainResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainResponseCopyWith<MainResponse> get copyWith =>
      _$MainResponseCopyWithImpl<MainResponse>(
          this as MainResponse, _$identity);

  /// Serializes this MainResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'MainResponse(error: $error, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $MainResponseCopyWith<$Res> {
  factory $MainResponseCopyWith(
          MainResponse value, $Res Function(MainResponse) _then) =
      _$MainResponseCopyWithImpl;
  @useResult
  $Res call({bool error, String message, List<PathData> data});
}

/// @nodoc
class _$MainResponseCopyWithImpl<$Res> implements $MainResponseCopyWith<$Res> {
  _$MainResponseCopyWithImpl(this._self, this._then);

  final MainResponse _self;
  final $Res Function(MainResponse) _then;

  /// Create a copy of MainResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PathData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MainResponse implements MainResponse {
  const _MainResponse(
      {required this.error,
      required this.message,
      required final List<PathData> data})
      : _data = data;
  factory _MainResponse.fromJson(Map<String, dynamic> json) =>
      _$MainResponseFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  final List<PathData> _data;
  @override
  List<PathData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of MainResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MainResponseCopyWith<_MainResponse> get copyWith =>
      __$MainResponseCopyWithImpl<_MainResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MainResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, message, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'MainResponse(error: $error, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$MainResponseCopyWith<$Res>
    implements $MainResponseCopyWith<$Res> {
  factory _$MainResponseCopyWith(
          _MainResponse value, $Res Function(_MainResponse) _then) =
      __$MainResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool error, String message, List<PathData> data});
}

/// @nodoc
class __$MainResponseCopyWithImpl<$Res>
    implements _$MainResponseCopyWith<$Res> {
  __$MainResponseCopyWithImpl(this._self, this._then);

  final _MainResponse _self;
  final $Res Function(_MainResponse) _then;

  /// Create a copy of MainResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_MainResponse(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PathData>,
    ));
  }
}

// dart format on
