import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/prefs_provider.dart';

part 'filter_notifier.g.dart';

@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  String build() {
    final prefs = ref.watch(prefsProvider);
    return prefs.getString('selected_filter') ?? 'All';
  }

  void select(String value) {
    final prefs = ref.read(prefsProvider);

    // Fire-and-forget, as required by the assignment.
    prefs.setString('selected_filter', value);

    state = value;
  }
}