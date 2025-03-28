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
  MainResponse? get mainResponse;
  List<PathData>? get results;
  Map<String, List<CustomPoint>>? get paths;

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
            (identical(other.mainResponse, mainResponse) ||
                other.mainResponse == mainResponse) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality().equals(other.paths, paths));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      progress,
      errorMessage,
      mainResponse,
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(paths));

  @override
  String toString() {
    return 'ProcessState(state: $state, progress: $progress, errorMessage: $errorMessage, mainResponse: $mainResponse, results: $results, paths: $paths)';
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
      MainResponse? mainResponse,
      List<PathData>? results,
      Map<String, List<CustomPoint>>? paths});

  $MainResponseCopyWith<$Res>? get mainResponse;
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
    Object? mainResponse = freezed,
    Object? results = freezed,
    Object? paths = freezed,
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
      mainResponse: freezed == mainResponse
          ? _self.mainResponse
          : mainResponse // ignore: cast_nullable_to_non_nullable
              as MainResponse?,
      results: freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PathData>?,
      paths: freezed == paths
          ? _self.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CustomPoint>>?,
    ));
  }

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainResponseCopyWith<$Res>? get mainResponse {
    if (_self.mainResponse == null) {
      return null;
    }

    return $MainResponseCopyWith<$Res>(_self.mainResponse!, (value) {
      return _then(_self.copyWith(mainResponse: value));
    });
  }
}

/// @nodoc

class _ProcessState implements ProcessState {
  const _ProcessState(
      {required this.state,
      required this.progress,
      this.errorMessage,
      this.mainResponse,
      final List<PathData>? results,
      final Map<String, List<CustomPoint>>? paths})
      : _results = results,
        _paths = paths;

  @override
  final ProcessingState state;
  @override
  final int progress;
  @override
  final String? errorMessage;
  @override
  final MainResponse? mainResponse;
  final List<PathData>? _results;
  @override
  List<PathData>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<CustomPoint>>? _paths;
  @override
  Map<String, List<CustomPoint>>? get paths {
    final value = _paths;
    if (value == null) return null;
    if (_paths is EqualUnmodifiableMapView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
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
            (identical(other.mainResponse, mainResponse) ||
                other.mainResponse == mainResponse) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(other._paths, _paths));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      progress,
      errorMessage,
      mainResponse,
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(_paths));

  @override
  String toString() {
    return 'ProcessState(state: $state, progress: $progress, errorMessage: $errorMessage, mainResponse: $mainResponse, results: $results, paths: $paths)';
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
      MainResponse? mainResponse,
      List<PathData>? results,
      Map<String, List<CustomPoint>>? paths});

  @override
  $MainResponseCopyWith<$Res>? get mainResponse;
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
    Object? mainResponse = freezed,
    Object? results = freezed,
    Object? paths = freezed,
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
      mainResponse: freezed == mainResponse
          ? _self.mainResponse
          : mainResponse // ignore: cast_nullable_to_non_nullable
              as MainResponse?,
      results: freezed == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PathData>?,
      paths: freezed == paths
          ? _self._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CustomPoint>>?,
    ));
  }

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainResponseCopyWith<$Res>? get mainResponse {
    if (_self.mainResponse == null) {
      return null;
    }

    return $MainResponseCopyWith<$Res>(_self.mainResponse!, (value) {
      return _then(_self.copyWith(mainResponse: value));
    });
  }
}

// dart format on
