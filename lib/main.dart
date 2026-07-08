import 'package:flutter/material.dart';
import 'models/job.dart';
import 'widgets/job_card.dart';

void main() {
  runApp(const CareerHubApp());
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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<Job> jobs = [
    Job(
      title: "Flutter Developer",
      company: "Tech Solutions",
      location: "Cape Town",
      salary: "R35 000 per month",
      description: "Build Flutter applications.",
      employmentType: "Full-time",
      isOpen: true,
      closingDate: null,
    ),

    Job(
      title: "Junior Developer",
      company: "Creative Apps",
      location: "Durban",
      description: "Entry-level software development role.",
      employmentType: "Full-time",
      isOpen: true,
    ),

    Job.closed(
      title: "Backend Developer",
      company: "Cloud Systems",
      location: "Pretoria",
      salary: "R45 000 per month",
      description: "Maintain backend services.",
      employmentType: "Full-time",
    ),

    Job.remote(
      title: "UI Designer",
      company: "Remote Tech",
      salary: "R40 000 per month",
      description: "Design user interfaces.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CareerHub Jobs")),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: const [
                Chip(label: Text('All')),
                SizedBox(width: 8),
                Chip(label: Text('Remote')),
                SizedBox(width: 8),
                Chip(label: Text('Full-time')),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                final job = jobs[index];

                return JobCard(job: job);
              },
            ),
          ),
        ],
      ),
    );
  }
}
