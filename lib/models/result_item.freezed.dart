// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResultItem {
  String get id;
  bool get correct;

  /// Create a copy of ResultItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultItemCopyWith<ResultItem> get copyWith =>
      _$ResultItemCopyWithImpl<ResultItem>(this as ResultItem, _$identity);

  /// Serializes this ResultItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.correct, correct) || other.correct == correct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, correct);

  @override
  String toString() {
    return 'ResultItem(id: $id, correct: $correct)';
  }
}

/// @nodoc
abstract mixin class $ResultItemCopyWith<$Res> {
  factory $ResultItemCopyWith(
          ResultItem value, $Res Function(ResultItem) _then) =
      _$ResultItemCopyWithImpl;
  @useResult
  $Res call({String id, bool correct});
}

/// @nodoc
class _$ResultItemCopyWithImpl<$Res> implements $ResultItemCopyWith<$Res> {
  _$ResultItemCopyWithImpl(this._self, this._then);

  final ResultItem _self;
  final $Res Function(ResultItem) _then;

  /// Create a copy of ResultItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? correct = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      correct: null == correct
          ? _self.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ResultItem implements ResultItem {
  const _ResultItem({required this.id, required this.correct});
  factory _ResultItem.fromJson(Map<String, dynamic> json) =>
      _$ResultItemFromJson(json);

  @override
  final String id;
  @override
  final bool correct;

  /// Create a copy of ResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultItemCopyWith<_ResultItem> get copyWith =>
      __$ResultItemCopyWithImpl<_ResultItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResultItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.correct, correct) || other.correct == correct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, correct);

  @override
  String toString() {
    return 'ResultItem(id: $id, correct: $correct)';
  }
}

/// @nodoc
abstract mixin class _$ResultItemCopyWith<$Res>
    implements $ResultItemCopyWith<$Res> {
  factory _$ResultItemCopyWith(
          _ResultItem value, $Res Function(_ResultItem) _then) =
      __$ResultItemCopyWithImpl;
  @override
  @useResult
  $Res call({String id, bool correct});
}

/// @nodoc
class __$ResultItemCopyWithImpl<$Res> implements _$ResultItemCopyWith<$Res> {
  __$ResultItemCopyWithImpl(this._self, this._then);

  final _ResultItem _self;
  final $Res Function(_ResultItem) _then;

  /// Create a copy of ResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? correct = null,
  }) {
    return _then(_ResultItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      correct: null == correct
          ? _self.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
