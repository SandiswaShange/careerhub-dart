import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user.dart';
import 'api_result.dart';

part 'auth_repository.g.dart';

const _accessTokenKey = 'access_token';
//for later when I have a refresh token const _refreshTokenKey = 'refresh_token';

@riverpod
AuthRepository authRepository(Ref ref) {
  const baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://localhost:5043',
  );

  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  return AuthRepository(
    dio: dio,
    storage: const FlutterSecureStorage(),
  );
}

class AuthRepository {
  final Dio dio;
  final FlutterSecureStorage storage;

  AuthRepository({
    required this.dio,
    required this.storage,
  });

  Future<String?> readAccessToken() {
    return storage.read(key: _accessTokenKey);
  }

  bool isTokenExpired(String token) {
    try {
      final payload = _decodeJwt(token);

      final exp = payload['exp'];

      if (exp == null) {
        return false;
      }

      final expiry =
          DateTime.fromMillisecondsSinceEpoch(exp * 1000);

      return expiry.isBefore(DateTime.now());
    } catch (_) {
      return true;
    }
  }

  User decodeUser(String token) {
    final payload = _decodeJwt(token);

    final username = payload['sub']?.toString() ?? '';

    return User(
      id: username,
      email: username,
      displayName: username,
    );
  }

  Future<ApiResult<User>> login(
    String username,
    String password,
  ) async {
    try {
      final response = await dio.post(
        '/api/v1/authorization/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      final token = response.data['token'] as String;

      await storage.write(
        key: _accessTokenKey,
        value: token,
      );

      return Success(decodeUser(token));
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 ||
          e.response?.statusCode == 400) {
        return const Failure(
          'Invalid username or password.',
        );
      }

      return Failure(
        _dioMessage(e),
        statusCode: e.response?.statusCode,
      );
    } catch (_) {
      return const Failure(
        'Something went wrong while logging in.',
      );
    }
  }

  Future<User?> tryRefresh() async {
    return null;
  }

  Future<void> logout() async {
    await storage.deleteAll();
  }

  static Map<String, dynamic> _decodeJwt(String token) {
    final payload = token.split('.')[1];

    final padding =
        (4 - payload.length % 4) % 4;

    final normalized =
        payload + ('=' * padding);

    final decoded = utf8.decode(
      base64Url.decode(normalized),
    );

    return jsonDecode(decoded)
        as Map<String, dynamic>;
  }

  String _dioMessage(DioException e) => switch (e.type) {
        DioExceptionType.connectionTimeout =>
          'The request timed out while connecting to the server.',
        DioExceptionType.sendTimeout =>
          'The request timed out while sending data.',
        DioExceptionType.receiveTimeout =>
          'The server took too long to respond.',
        DioExceptionType.badCertificate =>
          'A secure connection could not be established.',
        DioExceptionType.cancel =>
          'The request was cancelled.',
        DioExceptionType.connectionError =>
          'Could not connect to the server.',
        DioExceptionType.transformTimeout =>
          'The server took too long to process the response.',
        DioExceptionType.badResponse =>
          'The server returned an error.',
        DioExceptionType.unknown =>
          'An unexpected network error occurred.',
      };
}