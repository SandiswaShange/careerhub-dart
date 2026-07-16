import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/applications_repository.dart';
import 'app_providers.dart';

final applicationsRepositoryProvider = Provider<ApplicationsRepository>((ref) {
  return ApplicationsRepository(
    sharedPreferences: ref.watch(sharedPreferencesProvider),
  );
});