import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/job.dart';
import '../application/providers/app_providers.dart';

class SavedJobsNotifier extends Notifier<List<Job>> {
  static const _storageKey = 'saved_jobs';

  @override
  List<Job> build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    final rawValue = sharedPreferences.getString(_storageKey);

    if (rawValue == null || rawValue.isEmpty) {
      return const [];
    }

    final decoded = jsonDecode(rawValue) as List<dynamic>;
    return decoded
        .map((item) => item as Map<String, dynamic>)
        .map((item) => Job(
              id: item['id'] as String,
              title: item['title'] as String,
              company: item['company'] as String,
              location: item['location'] as String,
              salary: item['salary'] as String?,
              description: item['description'] as String,
              employmentType: item['employmentType'] as String,
              isOpen: item['isOpen'] as bool,
              closingDate: item['closingDate'] == null
                  ? null
                  : DateTime.parse(item['closingDate'] as String),
            ))
        .toList();
  }

  Future<void> toggle(Job job) async {
    final current = [...state];
    final exists = current.any((savedJob) => savedJob.id == job.id);

    if (exists) {
      current.removeWhere((savedJob) => savedJob.id == job.id);
    } else {
      current.add(job);
    }

    state = current;
    await _persist();
  }

  Future<void> _persist() async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final payload = jsonEncode(state.map((job) => {
      'id': job.id,
      'title': job.title,
      'company': job.company,
      'location': job.location,
      'salary': job.salary,
      'description': job.description,
      'employmentType': job.employmentType,
      'isOpen': job.isOpen,
      'closingDate': job.closingDate?.toIso8601String(),
    }).toList());

    await sharedPreferences.setString(_storageKey, payload);
  }
}

final savedJobsProvider = NotifierProvider<SavedJobsNotifier, List<Job>>(
  SavedJobsNotifier.new,
);
