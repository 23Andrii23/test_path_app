// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_screen.controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$processScreenControllerHash() =>
    r'1eab664f4af6cb8708e16cf35b7a6ec79f321708';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProcessScreenController
    extends BuildlessAutoDisposeNotifier<ProcessState> {
  late final MainResponse mainResponse;

  ProcessState build(
    MainResponse mainResponse,
  );
}

/// See also [ProcessScreenController].
@ProviderFor(ProcessScreenController)
const processScreenControllerProvider = ProcessScreenControllerFamily();

/// See also [ProcessScreenController].
class ProcessScreenControllerFamily extends Family<ProcessState> {
  /// See also [ProcessScreenController].
  const ProcessScreenControllerFamily();

  /// See also [ProcessScreenController].
  ProcessScreenControllerProvider call(
    MainResponse mainResponse,
  ) {
    return ProcessScreenControllerProvider(
      mainResponse,
    );
  }

  @override
  ProcessScreenControllerProvider getProviderOverride(
    covariant ProcessScreenControllerProvider provider,
  ) {
    return call(
      provider.mainResponse,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'processScreenControllerProvider';
}

/// See also [ProcessScreenController].
class ProcessScreenControllerProvider extends AutoDisposeNotifierProviderImpl<
    ProcessScreenController, ProcessState> {
  /// See also [ProcessScreenController].
  ProcessScreenControllerProvider(
    MainResponse mainResponse,
  ) : this._internal(
          () => ProcessScreenController()..mainResponse = mainResponse,
          from: processScreenControllerProvider,
          name: r'processScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$processScreenControllerHash,
          dependencies: ProcessScreenControllerFamily._dependencies,
          allTransitiveDependencies:
              ProcessScreenControllerFamily._allTransitiveDependencies,
          mainResponse: mainResponse,
        );

  ProcessScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mainResponse,
  }) : super.internal();

  final MainResponse mainResponse;

  @override
  ProcessState runNotifierBuild(
    covariant ProcessScreenController notifier,
  ) {
    return notifier.build(
      mainResponse,
    );
  }

  @override
  Override overrideWith(ProcessScreenController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProcessScreenControllerProvider._internal(
        () => create()..mainResponse = mainResponse,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mainResponse: mainResponse,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ProcessScreenController, ProcessState>
      createElement() {
    return _ProcessScreenControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProcessScreenControllerProvider &&
        other.mainResponse == mainResponse;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mainResponse.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProcessScreenControllerRef
    on AutoDisposeNotifierProviderRef<ProcessState> {
  /// The parameter `mainResponse` of this provider.
  MainResponse get mainResponse;
}

class _ProcessScreenControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ProcessScreenController,
        ProcessState> with ProcessScreenControllerRef {
  _ProcessScreenControllerProviderElement(super.provider);

  @override
  MainResponse get mainResponse =>
      (origin as ProcessScreenControllerProvider).mainResponse;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
