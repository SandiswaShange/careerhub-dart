import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/job.dart';
import 'jobs_notifier.dart';
import 'filter_notifier.dart';

final filteredJobsProvider = Provider<AsyncValue<List<Job>>>((ref) {
  final jobsAsync = ref.watch(jobsNotifierProvider);
  final filter = ref.watch(filterNotifierProvider);

  return jobsAsync.whenData((jobs) {
    return switch (filter) {
      "Full-time" => jobs.where((job) => job.employmentType == "Full-time").toList(),
      "Part-time" => jobs.where((job) => job.employmentType == "Part-time").toList(),
      "Contract" => jobs.where((job) => job.employmentType == "Contract").toList(),
      "Internship" => jobs.where((job) => job.employmentType == "Internship").toList(),
      _ => jobs,
    };
  });
});
