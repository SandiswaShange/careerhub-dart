import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/job.dart';

final jobsProvider = FutureProvider<List<Job>>((ref) async {
  await Future.delayed(const Duration(milliseconds: 1500));

  return [
    Job(
      title: "Flutter Developer",
      company: "Tech Solutions",
      location: "Cape Town",
      salary: "R35 000 per month",
      description: "Build Flutter applications.",
      employmentType: "Full-time",
      isOpen: true,
    ),

    Job(
      title: "Junior Developer",
      company: "Creative Apps",
      location: "Durban",
      description: "Entry-level software development role.",
      employmentType: "Full-time",
      isOpen: true,
    ),

    Job.closed(
      title: "Backend Developer",
      company: "Cloud Systems",
      location: "Pretoria",
      salary: "R45 000 per month",
      description: "Maintain backend services.",
      employmentType: "Full-time",
    ),

    Job.remote(
      title: "UI Designer",
      company: "Remote Tech",
      salary: "R40 000 per month",
      description: "Design user interfaces.",
    ),
  ];
});

final selectedFilterProvider = StateProvider<String>((ref) => "All");

final filteredJobsProvider = Provider<AsyncValue<List<Job>>>((ref) {
  final jobsAsync = ref.watch(jobsProvider);
  final filter = ref.watch(selectedFilterProvider);

  return jobsAsync.whenData((jobs) {
    switch (filter) {
      case "Remote":
        return jobs.where((job) => job.employmentType == "Remote").toList();

      case "Full-time":
        return jobs.where((job) => job.employmentType == "Full-time").toList();

      default:
        return jobs;
    }
  });
});
