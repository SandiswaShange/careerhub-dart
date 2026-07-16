import '../data/api_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/jobs_repository.dart';
import '../models/job.dart';

part 'jobs_notifier.g.dart';

@riverpod
class JobsNotifier extends _$JobsNotifier {
@override
FutureOr<List<Job>> build() async {
  final result = await ref.watch(jobsRepositoryProvider).getJobs();

  return switch (result) {
    Success(data: final jobs) => jobs,
    Failure(message: final message) => throw Exception(message),
  };
}
}
//const jobsNotifierProvider = jobsProvider;
