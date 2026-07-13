import 'package:careerhub/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CareerHub loads jobs and navigation', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProviderScope(child: CareerHubApp()));

    // Loading spinner appears immediately.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Wait longer than the 1500 ms delay in jobsProvider.
    await tester.pump(const Duration(milliseconds: 1600));
    await tester.pumpAndSettle();

    // Spinner disappears.
    expect(find.byType(CircularProgressIndicator), findsNothing);

    // NavigationBar destinations.
    expect(find.text('Jobs'), findsWidgets);
    expect(find.text('Saved'), findsOneWidget);

    // Job cards.
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('Junior Developer'), findsOneWidget);
    expect(find.text('Backend Developer'), findsOneWidget);
    expect(find.text('UI Designer'), findsOneWidget);

    // Company names.
    expect(find.text('Tech Solutions'), findsOneWidget);
    expect(find.text('Creative Apps'), findsOneWidget);
    expect(find.text('Cloud Systems'), findsOneWidget);
    expect(find.text('Remote Tech'), findsOneWidget);
  });
}
