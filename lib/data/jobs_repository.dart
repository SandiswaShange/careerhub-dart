import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/job.dart';
import 'job_dto.dart';

part 'jobs_repository.g.dart';

@riverpod
Dio dio(Ref ref) {
  const baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:5000',
  );

  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );

  dio.interceptors.add(
    LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ),
  );

  return dio;
}

@riverpod
JobsRepository jobsRepository(Ref ref) {
  return JobsRepository(ref.watch(dioProvider));
}

class JobsRepository {
  JobsRepository(this._dio);

  final Dio _dio;

  Future<List<Job>> getJobs() async {
    final response = await _dio.get('/api/jobs');
    final data = response.data;

    if (data is! List) {
      throw Exception('Unexpected jobs response format');
    }

    return data
        .map(
          (item) => Job.fromDto(
            JobDto.fromJson(Map<String, dynamic>.from(item as Map)),
          ),
        )
        .toList();
  }
}
