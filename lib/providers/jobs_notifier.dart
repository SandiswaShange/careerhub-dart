import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/jobs_repository.dart';
import '../models/job.dart';

part 'jobs_notifier.g.dart';

@riverpod
class JobsNotifier extends _$JobsNotifier {
  @override
  FutureOr<List<Job>> build() async {
    return ref.watch(jobsRepositoryProvider).getJobs();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}

const jobsNotifierProvider = jobsProvider;
