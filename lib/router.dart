import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/models/note.dart';
import 'package:myapp/screens/details_screen.dart';
import 'package:myapp/screens/home_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            final note = state.extra as Note;
            return DetailsScreen(note: note);
          },
        ),
      ],
    ),
  ],
);
