// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchItemHash() => r'99264a1aab9e859f484d6a7820d07ac77eaffe18';

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

typedef FetchItemRef = AutoDisposeFutureProviderRef<List<String>>;

/// See also [fetchItem].
@ProviderFor(fetchItem)
const fetchItemProvider = FetchItemFamily();

/// See also [fetchItem].
class FetchItemFamily extends Family<AsyncValue<List<String>>> {
  /// See also [fetchItem].
  const FetchItemFamily();

  /// See also [fetchItem].
  FetchItemProvider call({
    required int page,
  }) {
    return FetchItemProvider(
      page: page,
    );
  }

  @override
  FetchItemProvider getProviderOverride(
    covariant FetchItemProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'fetchItemProvider';
}

/// See also [fetchItem].
class FetchItemProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [fetchItem].
  FetchItemProvider({
    required this.page,
  }) : super.internal(
          (ref) => fetchItem(
            ref,
            page: page,
          ),
          from: fetchItemProvider,
          name: r'fetchItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchItemHash,
          dependencies: FetchItemFamily._dependencies,
          allTransitiveDependencies: FetchItemFamily._allTransitiveDependencies,
        );

  final int page;

  @override
  bool operator ==(Object other) {
    return other is FetchItemProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
