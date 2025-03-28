// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResultResponse {
  bool get error;
  String get message;
  List<ResultItem> get data;

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultResponseCopyWith<ResultResponse> get copyWith =>
      _$ResultResponseCopyWithImpl<ResultResponse>(
          this as ResultResponse, _$identity);

  /// Serializes this ResultResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultResponse &&
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
    return 'ResultResponse(error: $error, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ResultResponseCopyWith<$Res> {
  factory $ResultResponseCopyWith(
          ResultResponse value, $Res Function(ResultResponse) _then) =
      _$ResultResponseCopyWithImpl;
  @useResult
  $Res call({bool error, String message, List<ResultItem> data});
}

/// @nodoc
class _$ResultResponseCopyWithImpl<$Res>
    implements $ResultResponseCopyWith<$Res> {
  _$ResultResponseCopyWithImpl(this._self, this._then);

  final ResultResponse _self;
  final $Res Function(ResultResponse) _then;

  /// Create a copy of ResultResponse
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
              as List<ResultItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ResultResponse implements ResultResponse {
  const _ResultResponse(
      {required this.error,
      required this.message,
      required final List<ResultItem> data})
      : _data = data;
  factory _ResultResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultResponseFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  final List<ResultItem> _data;
  @override
  List<ResultItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultResponseCopyWith<_ResultResponse> get copyWith =>
      __$ResultResponseCopyWithImpl<_ResultResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResultResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultResponse &&
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
    return 'ResultResponse(error: $error, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ResultResponseCopyWith<$Res>
    implements $ResultResponseCopyWith<$Res> {
  factory _$ResultResponseCopyWith(
          _ResultResponse value, $Res Function(_ResultResponse) _then) =
      __$ResultResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool error, String message, List<ResultItem> data});
}

/// @nodoc
class __$ResultResponseCopyWithImpl<$Res>
    implements _$ResultResponseCopyWith<$Res> {
  __$ResultResponseCopyWithImpl(this._self, this._then);

  final _ResultResponse _self;
  final $Res Function(_ResultResponse) _then;

  /// Create a copy of ResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_ResultResponse(
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
              as List<ResultItem>,
    ));
  }
}

// dart format on
