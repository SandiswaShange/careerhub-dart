import 'package:careerhub/providers/job_providers.dart';
import 'package:flutter/material.dart';
import 'models/job.dart';
import 'widgets/job_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: CareerHubApp()));
}

class CareerHubApp extends StatelessWidget {
  const CareerHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CareerHub',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),

      themeMode: ThemeMode.system,

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobsAsync = ref.watch(filteredJobsProvider);
    final selectedFilter = ref.watch(selectedFilterProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("CareerHub Jobs")),
      body: Column(
        children: [
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
                  label: const Text("Remote"),
                  selected: selectedFilter == "Remote",
                  onSelected: (_) {
                    ref.read(selectedFilterProvider.notifier).state = "Remote";
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
                      onPressed: () => ref.refresh(jobsProvider),
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
