import '../data/api_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/jobs_repository.dart';
import '../models/job.dart';

part 'jobs_notifier.g.dart';

@riverpod
class JobsNotifier extends _$JobsNotifier {
@override
Future<List<Job>> build() async {
  final repository = ref.read(jobsRepositoryProvider);

  // 1. Load cached jobs.
  final cachedJobs = await repository.getCachedJobs();

  // 2. Show cached jobs immediately if available.
  if (cachedJobs.isNotEmpty) {
    state = AsyncData(cachedJobs);
  }

  // 3. Fetch the latest jobs from the API.
  final result = await repository.getJobs();

  // 4. Return the appropriate result.
  return switch (result) {
    Success(:final data) => data,
    Failure(:final message) =>
      cachedJobs.isNotEmpty
          ? cachedJobs
          : throw Exception(message),
  };
}
}
//const jobsNotifierProvider = jobsProvider;
