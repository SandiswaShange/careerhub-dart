import 'package:careerhub/models/job.dart';

void main() {
  final job1 = Job(
    id: 1,
    title: "Flutter Developer",
    company: "Tech Solutions",
    location: "Cape Town",
    salary: "R35 000 per month",
    description: "Build Flutter applications.",
    employmentType: "Full-time",
    isOpen: true,
    closingDate: DateTime(2026, 8, 31),
  );

  final job2 = Job(
    id: 2,
    title: "Junior Developer",
    company: "Creative Apps",
    location: "Durban",
    description: "Entry-level software development role.",
    employmentType: "Full-time",
    isOpen: true,
  );

  final job3 = Job.closed(
    id: 3,
    title: "Backend Developer",
    company: "Cloud Systems",
    location: "Pretoria",
    salary: "R45 000 per month",
    description: "Maintain backend services.",
    employmentType: "Full-time",
    closingDate: DateTime(2026, 6, 30),
  );

  final job4 = Job.remote(
    id: 4,
    title: "UI Designer",
    company: "Remote Tech",
    salary: "R40 000 per month",
    description: "Design user interfaces for web and mobile.",
    closingDate: DateTime(2026, 9, 15),
  );

  final jobs = [job1, job2, job3, job4];

  for (final job in jobs) {
    print(job);
    print("canApply: ${job.canApply}");
    print("displaySalary: ${job.displaySalary}");
    print("----------------------");
  }
}
