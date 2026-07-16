import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/saved_jobs_provider.dart';
import '../widgets/job_card.dart';

class SavedScreen extends ConsumerWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedJobs = ref.watch(savedJobsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Saved Jobs')),
      body: savedJobs.isEmpty
          ? const Center(child: Text('No saved jobs yet.'))
          : ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: savedJobs.length,
              itemBuilder: (context, index) {
                return JobCard(job: savedJobs[index]);
              },
            ),
    );
  }
}
