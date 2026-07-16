import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/job.dart';
import '../providers/job_providers.dart';
import '../providers/jobs_notifier.dart';
import '../widgets/job_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobsAsync = ref.watch(filteredJobsProvider);
    final selectedFilter = ref.watch(selectedFilterProvider);
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "CareerHub Jobs",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                FilterChip(
                  label: const Text("All"),
                  selected: selectedFilter == "All",
                  onSelected: (_) {
                    ref.read(selectedFilterProvider.notifier).state = "All";
                  },
                ),
                const SizedBox(width: 8),

                FilterChip(
                  label: const Text("Full-time"),
                  selected: selectedFilter == "Full-time",
                  onSelected: (_) {
                    ref.read(selectedFilterProvider.notifier).state =
                        "Full-time";
                  },
                ),
                const SizedBox(width: 8),

                FilterChip(
                  label: const Text("Part-time"),
                  selected: selectedFilter == "Part-time",
                  onSelected: (_) {
                    ref.read(selectedFilterProvider.notifier).state =
                        "Part-time";
                  },
                ),
                const SizedBox(width: 8),

                FilterChip(
                  label: const Text("Contract"),
                  selected: selectedFilter == "Contract",
                  onSelected: (_) {
                    ref.read(selectedFilterProvider.notifier).state =
                        "Contract";
                  },
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: const Text("Internship"),
                  selected: selectedFilter == "Internship",
                  onSelected: (_) {
                    ref.read(selectedFilterProvider.notifier).state =
                        "Internship";
                  },
                ),
              ],
            ),
          ),

          Expanded(
            child: jobsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),

              error: (error, stack) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline),
                    const SizedBox(height: 8),
                    const Text("Failed to load jobs"),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => ref.invalidate(jobsNotifierProvider),
                      child: const Text("Retry"),
                    ),
                  ],
                ),
              ),

              data: (jobs) {
                if (jobs.isEmpty) {
                  return const Center(
                    child: Text("No jobs match this filter."),
                  );
                }

                return LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth < 600) {
                      return ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        itemCount: jobs.length,
                        itemBuilder: (context, index) =>
                            _buildCard(context, jobs, index),
                      );
                    }

                    return GridView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: jobs.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                      itemBuilder: (context, index) =>
                          _buildCard(context, jobs, index),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, List<Job> jobs, int index) {
    return JobCard(job: jobs[index]);
  }
}
