import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';

import '../models/job.dart';
import 'jobs_notifier.dart';

final selectedFilterProvider = StateProvider<String>((ref) => "All");

final filteredJobsProvider = Provider<AsyncValue<List<Job>>>((ref) {
  final jobsAsync = ref.watch(jobsNotifierProvider);
  final filter = ref.watch(selectedFilterProvider);

  return jobsAsync.whenData((jobs) {
    switch (filter) {
      case "Full-time":
        return jobs.where((job) => job.employmentType == "Full-time").toList();
      case "Part-time":
        return jobs.where((job) => job.employmentType == "Part-time").toList();
      case "Contract":
        return jobs.where((job) => job.employmentType == "Contract").toList();
      case "Internship":
        return jobs.where((job) => job.employmentType == "Internship").toList();

      default:
        return jobs;
    }
  });
});
