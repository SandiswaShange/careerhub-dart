import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/jobs_notifier.dart';

class JobDetailScreen extends ConsumerWidget {
  final String jobId;

  const JobDetailScreen({super.key, required this.jobId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use the raw jobs provider so the selected job can always be found,
    // even if the current filter would hide it.
    final jobsAsync = ref.watch(jobsNotifierProvider);

    return jobsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),

      error: (error, stack) => Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            "Failed to load job.\n$error",
            textAlign: TextAlign.center,
          ),
        ),
      ),

      data: (jobs) {
        final job = jobs.where((job) => job.id == jobId).firstOrNull;

        if (job == null) {
          return const Center(
            child: Text("Job not found.", style: TextStyle(fontSize: 20)),
          );
        }

        return SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(
                job.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: 20),

              _detailTile("Company", job.company),
              _detailTile("Location", job.location),
              _detailTile("Employment Type", job.employmentType),
              _detailTile("Salary", job.displaySalary),
              _detailTile("Status", job.canApply ? "Open" : "Closed"),

              if (job.closingDate != null)
                _detailTile("Closing Date", job.closingDate.toString()),

              const SizedBox(height: 24),

              Text(
                "Description",
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: 8),

              Text(job.description),
            ],
          ),
        );
      },
    );
  }

  Widget _detailTile(String title, String value) {
    return ListTile(title: Text(title), subtitle: Text(value));
  }
}
