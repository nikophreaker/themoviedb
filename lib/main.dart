import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:themoviedb/features/movies/ui/screens/detail_screen.dart';
import 'package:themoviedb/features/movies/ui/screens/home_screen.dart';
import 'package:themoviedb/features/user/movies/ui/screens/user_profile_screen.dart';
import 'package:themoviedb/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const GlobalBlocProviders(child: MyApp()));
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details/:movieId',
          name: 'details',
          builder: (BuildContext context, GoRouterState state) {
            String movieId = state.pathParameters["movieId"] ?? "1";
            return DetailMovieScreen(
              movieId: movieId,
            );
          },
        ),
        GoRoute(
          path: 'user',
          builder: (BuildContext context, GoRouterState state) {
            return const UserProfileScreen();
          },
        )
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff04101C),
        ),
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.copyWith(
              bodySmall: const TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
              bodyMedium: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
              titleSmall: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              titleMedium: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              titleLarge: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
      ),
      routerConfig: _router,
    );
  }
}
