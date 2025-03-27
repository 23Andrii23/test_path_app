// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_screen.controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProcessState {
  ProcessingState get state;
  int get progress;
  String? get errorMessage;
  List<PathData>? get results;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<ProcessState> get copyWith =>
      _$ProcessStateCopyWithImpl<ProcessState>(
          this as ProcessState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProcessState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, progress, errorMessage,
      const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'ProcessState(state: $state, progress: $progress, errorMessage: $errorMessage, results: $results)';
  }
}

/// @nodoc
abstract mixin class $ProcessStateCopyWith<$Res> {
  factory $ProcessStateCopyWith(
          ProcessState value, $Res Function(ProcessState) _then) =
      _$ProcessStateCopyWithImpl;
  @useResult
  $Res call(
      {ProcessingState state,
      int progress,
      String? errorMessage,
      List<PathData>? results});
}

/// @nodoc
class _$ProcessStateCopyWithImpl<$Res> implements $ProcessStateCopyWith<$Res> {
  _$ProcessStateCopyWithImpl(this._self, this._then);

  final ProcessState _self;
  final $Res Function(ProcessState) _then;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? progress = null,
    Object? errorMessage = freezed,
    Object? results = freezed,
  }) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as ProcessingState,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PathData>?,
    ));
  }
}

/// @nodoc

class _ProcessState implements ProcessState {
  const _ProcessState(
      {required this.state,
      required this.progress,
      this.errorMessage,
      final List<PathData>? results})
      : _results = results;

  @override
  final ProcessingState state;
  @override
  final int progress;
  @override
  final String? errorMessage;
  final List<PathData>? _results;
  @override
  List<PathData>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProcessStateCopyWith<_ProcessState> get copyWith =>
      __$ProcessStateCopyWithImpl<_ProcessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProcessState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, progress, errorMessage,
      const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'ProcessState(state: $state, progress: $progress, errorMessage: $errorMessage, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$ProcessStateCopyWith<$Res>
    implements $ProcessStateCopyWith<$Res> {
  factory _$ProcessStateCopyWith(
          _ProcessState value, $Res Function(_ProcessState) _then) =
      __$ProcessStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ProcessingState state,
      int progress,
      String? errorMessage,
      List<PathData>? results});
}

/// @nodoc
class __$ProcessStateCopyWithImpl<$Res>
    implements _$ProcessStateCopyWith<$Res> {
  __$ProcessStateCopyWithImpl(this._self, this._then);

  final _ProcessState _self;
  final $Res Function(_ProcessState) _then;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? progress = null,
    Object? errorMessage = freezed,
    Object? results = freezed,
  }) {
    return _then(_ProcessState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as ProcessingState,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PathData>?,
    ));
  }
}

// dart format on
