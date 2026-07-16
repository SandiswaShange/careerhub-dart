import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../data/api_result.dart';
import '../data/job_application_dto.dart';
import '../models/job_application.dart';

class ApplicationsRepository {
  static const _storageKey = 'cached_applications';

  final SharedPreferences sharedPreferences;

  ApplicationsRepository({required this.sharedPreferences});

  Future<List<JobApplication>> getCachedApplications() async {
    final rawValue = sharedPreferences.getString(_storageKey);
    if (rawValue == null || rawValue.isEmpty) {
      return const [];
    }

    final decoded = jsonDecode(rawValue) as List<dynamic>;
    return decoded
        .map((item) => item as Map<String, dynamic>)
        .map((item) => JobApplication.fromDto(JobApplicationDto.fromJson(item)))
        .toList();
  }

  Future<ApiResult<List<JobApplication>>> fetchApplications() async {
    try {
      final fallbackDtos = <JobApplicationDto>[
        const JobApplicationDto(
          id: 'app-1',
          jobTitle: 'Flutter Developer',
          companyName: 'CareerHub Labs',
          submittedAt: '2026-07-10T10:00:00.000Z',
          status: 'submitted',
        ),
        const JobApplicationDto(
          id: 'app-2',
          jobTitle: 'Backend Engineer',
          companyName: 'Nova Tech',
          submittedAt: '2026-07-12T10:00:00.000Z',
          status: 'underReview',
        ),
      ];

      final applications = fallbackDtos.map(JobApplication.fromDto).toList();

      await sharedPreferences.setString(
        _storageKey,
        jsonEncode(applications.map((application) {
          return {
            'id': application.id,
            'jobTitle': application.jobTitle,
            'companyName': application.companyName,
            'submittedAt': application.submittedAt.toUtc().toIso8601String(),
            'status': application.status.name,
          };
        }).toList()),
      );

      return Success(applications);
    } catch (e) {
      return Failure('Unable to load applications: $e');
    }
  }
}