import 'package:flutter/material.dart';
import '../models/job.dart';

class JobCard extends StatelessWidget {
  final Job job;

  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(job.title, style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 4),

            Text(job.company),

            Text(job.location),

            Text(job.employmentType),

            const SizedBox(height: 8),

            Text("Salary: ${job.displaySalary}"),

            if (job.closingDate != null) ...[
              const SizedBox(height: 8),
              Text("Closes: ${job.closingDate!.toLocal()}"),
            ],

            const SizedBox(height: 12),

            Chip(
              label: Text(job.canApply ? "Open" : "Closed"),
              backgroundColor: job.canApply ? Colors.green : Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
