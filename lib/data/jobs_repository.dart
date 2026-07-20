import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:isar/isar.dart';
import '../core/isar_provider.dart';
import 'job_cache.dart';

import 'api_result.dart';

import '../models/job.dart';
import 'job_dto.dart';

part 'jobs_repository.g.dart';

@riverpod
Dio dio(Ref ref) {
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
  return JobsRepository(
    ref.watch(dioProvider),
    ref.watch(isarProvider),
  );
}

class JobsRepository {
  JobsRepository(
    this._dio,
    this._isar,
  );

  final Dio _dio;
  final Isar _isar;

  Future<List<Job>> getCachedJobs() async {
  final cachedJobs = await _isar.jobCaches.where().findAll();

  return cachedJobs.map(_jobFromCache).toList();
}

  Future<ApiResult<List<Job>>> getJobs() async {
    try {
      final responses = await Future.wait([
        _dio.get('/api/v1/jobs'),
      ]);

      final parsed = _parseResponses(responses);
      final jobs = parsed.jobDtos.map(Job.fromDto).toList();

      await _isar.writeTxn(() async {
        await _isar.jobCaches.clear();

        await _isar.jobCaches.putAll(
          jobs.map(_jobToCache).toList(),
        );
      });

      return Success(jobs);
    } on DioException catch (e) {
      return Failure(
        _dioMessage(e),
        statusCode: e.response?.statusCode,
      );
    } catch (_) {
      return const Failure('Something went wrong while loading jobs.');
    }
  }

  ({List<JobDto> jobDtos}) _parseResponses(List<Response<dynamic>> responses) {
    final jobDtos = (responses[0].data as List<dynamic>)
        .cast<Map<String, dynamic>>()
        .map(JobDto.fromJson)
        .toList();

    return (jobDtos: jobDtos);
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
        DioExceptionType.badResponse => switch (e.response?.statusCode) {
            400 => 'The server rejected the request.',
            401 => 'You are not authorized to view these jobs.',
            403 => 'Access to these jobs is forbidden.',
            404 => 'Jobs could not be found.',
            500 || 502 || 503 || 504 =>
              'The server is unavailable right now.',
            _ => 'The server returned an error.',
          },
        DioExceptionType.unknown =>
          'An unexpected network error occurred.',
      };

    Job _jobFromCache(JobCache cache) {
      return Job(
        id: cache.jobId,
        title: cache.title,
        company: cache.company,
        location: cache.location,
        salary: cache.salary,
        description: cache.description,
        employmentType: cache.employmentType,
        isOpen: cache.isOpen,
        closingDate: cache.closingDate,
      );
    }

    JobCache _jobToCache(Job job) {
      return JobCache()
        ..jobId = job.id
        ..title = job.title
        ..company = job.company
        ..location = job.location
        ..salary = job.salary
        ..description = job.description
        ..employmentType = job.employmentType
        ..isOpen = job.isOpen
        ..closingDate = job.closingDate;
    }
}
