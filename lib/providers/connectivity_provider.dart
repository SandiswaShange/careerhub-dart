import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Connectivity connectivity = Connectivity();

final connectivityStreamProvider =
    StreamProvider<List<ConnectivityResult>>(
  (ref) => connectivity.onConnectivityChanged,
);

final isOfflineProvider = Provider<bool>((ref) {
  final connectivityState = ref.watch(connectivityStreamProvider);

  return connectivityState.when(
    data: (results) =>
        results.every((result) => result == ConnectivityResult.none),
    loading: () => false,
    error: (_, __) => false,
  );
});