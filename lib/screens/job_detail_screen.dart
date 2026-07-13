import 'package:careerhub/providers/job_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JobDetailScreen extends ConsumerWidget {
  final int jobId;

  const JobDetailScreen({super.key, required this.jobId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use the raw jobs provider so the selected job can still be found
    // even if the active filter would normally hide it.
    final jobsAsync = ref.watch(jobsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Job Details")),
      body: jobsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),

        error: (error, stack) =>
            const Center(child: Text("Failed to load job.")),

        data: (jobs) {
          final job = jobs.where((j) => j.id == jobId).firstOrNull;

          if (job == null) {
            return const Center(child: Text("Job not found."));
          }

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(job.title, style: Theme.of(context).textTheme.headlineSmall),

              const SizedBox(height: 16),

              ListTile(
                title: const Text("Company"),
                subtitle: Text(job.company),
              ),

              ListTile(
                title: const Text("Location"),
                subtitle: Text(job.location),
              ),

              ListTile(
                title: const Text("Employment Type"),
                subtitle: Text(job.employmentType),
              ),

              ListTile(
                title: const Text("Salary"),
                subtitle: Text(job.displaySalary),
              ),

              ListTile(
                title: const Text("Status"),
                subtitle: Text(job.canApply ? "Open" : "Closed"),
              ),

              if (job.closingDate != null)
                ListTile(
                  title: const Text("Closing Date"),
                  subtitle: Text(job.closingDate.toString()),
                ),

              const SizedBox(height: 20),

              Text(
                "Description",
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: 8),

              Text(job.description),
            ],
          );
        },
      ),
    );
  }
}
