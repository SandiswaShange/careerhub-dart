import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/api_result.dart';
import '../data/auth_repository.dart';
import '../models/auth_state.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  FutureOr<AuthState> build() async {
    final repository = ref.read(authRepositoryProvider);

    final token = await repository.readAccessToken();

    if (token == null) {
      return const Unauthenticated();
    }

    if (repository.isTokenExpired(token)) {
      // Backend does not support refresh tokens.
      await repository.logout();
      return const Unauthenticated();
    }

    final user = repository.decodeUser(token);

    return Authenticated(user: user);
  }

  Future<void> login(String username, String password) async {
    state = const AsyncData(Authenticating());

    final repository = ref.read(authRepositoryProvider);

    final result = await repository.login(
      username,
      password,
    );

    switch (result) {
      case Success(data: final user):
        state = AsyncData(
          Authenticated(user: user),
        );

      case Failure(message: final message):
        state = AsyncData(
          AuthError(message),
        );
    }
  }

  Future<void> logout() async {
    final repository = ref.read(authRepositoryProvider);

    await repository.logout();

    state = const AsyncData(
      Unauthenticated(),
    );
  }
}