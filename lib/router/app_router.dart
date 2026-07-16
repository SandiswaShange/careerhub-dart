import 'package:careerhub/screens/home_screen.dart';
import 'package:careerhub/screens/job_detail_screen.dart';
import 'package:careerhub/screens/saved_screen.dart';
import 'package:careerhub/widgets/scaffold_with_nav_bar.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/jobs',

  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavBar(navigationShell: navigationShell);
      },

      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/jobs',

              builder: (context, state) => const HomeScreen(),

              routes: [
                GoRoute(
                  path: ':id',

                  builder: (context, state) {
                    final id = state.pathParameters['id']!;

                    return JobDetailScreen(jobId: id);
                  },
                ),
              ],
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/saved',

              builder: (context, state) => const SavedScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
