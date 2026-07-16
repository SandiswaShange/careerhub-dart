import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../models/job.dart';
import '../providers/saved_jobs_provider.dart';
import 'job_status_badge.dart';

class JobCard extends ConsumerWidget {
  final Job job;

  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final savedJobs = ref.watch(savedJobsProvider);
    final isSaved = savedJobs.any((savedJob) => savedJob.id == job.id);

    return Card(
      color: colorScheme.surface,
      margin: const EdgeInsets.all(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => context.push('/jobs/${job.id}'),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      job.title,
                      style: textTheme.titleMedium?.copyWith(
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isSaved ? Icons.bookmark : Icons.bookmark_border,
                      color: isSaved ? colorScheme.primary : null,
                    ),
                    onPressed: () {
                      ref.read(savedJobsProvider.notifier).toggle(job);
                    },
                  ),
                ],
              ),

              const SizedBox(height: 4),

              Text(
                job.company,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface,
                ),
              ),

              Text(
                job.location,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),

              Text(
                job.employmentType,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "Salary: ${job.displaySalary}",
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface,
                ),
              ),

              if (job.closingDate != null) ...[
                const SizedBox(height: 8),
                Text(
                  "Closes: ${job.closingDate!.toLocal()}",
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],

              const SizedBox(height: 12),

              JobStatusBadge(isOpen: job.canApply),
            ],
          ),
        ),
      ),
    );
  }
}
