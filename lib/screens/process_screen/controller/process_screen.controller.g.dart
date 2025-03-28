// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_screen.controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$processScreenControllerHash() =>
    r'e6e4f9e776ca937b05a917ecf78558d8bb1fd9c2';

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
  late final String apiUrl;

  ProcessState build(
    String apiUrl,
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
    String apiUrl,
  ) {
    return ProcessScreenControllerProvider(
      apiUrl,
    );
  }

  @override
  ProcessScreenControllerProvider getProviderOverride(
    covariant ProcessScreenControllerProvider provider,
  ) {
    return call(
      provider.apiUrl,
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
    String apiUrl,
  ) : this._internal(
          () => ProcessScreenController()..apiUrl = apiUrl,
          from: processScreenControllerProvider,
          name: r'processScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$processScreenControllerHash,
          dependencies: ProcessScreenControllerFamily._dependencies,
          allTransitiveDependencies:
              ProcessScreenControllerFamily._allTransitiveDependencies,
          apiUrl: apiUrl,
        );

  ProcessScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.apiUrl,
  }) : super.internal();

  final String apiUrl;

  @override
  ProcessState runNotifierBuild(
    covariant ProcessScreenController notifier,
  ) {
    return notifier.build(
      apiUrl,
    );
  }

  @override
  Override overrideWith(ProcessScreenController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProcessScreenControllerProvider._internal(
        () => create()..apiUrl = apiUrl,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        apiUrl: apiUrl,
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
    return other is ProcessScreenControllerProvider && other.apiUrl == apiUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, apiUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProcessScreenControllerRef
    on AutoDisposeNotifierProviderRef<ProcessState> {
  /// The parameter `apiUrl` of this provider.
  String get apiUrl;
}

class _ProcessScreenControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ProcessScreenController,
        ProcessState> with ProcessScreenControllerRef {
  _ProcessScreenControllerProviderElement(super.provider);

  @override
  String get apiUrl => (origin as ProcessScreenControllerProvider).apiUrl;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
