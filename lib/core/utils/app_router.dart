import 'package:bookly_app_project/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app_project/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly_app_project/features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app_project/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const homeView = '/homeView';
  static const bookView = '/bookView';
  static const searchView = '/searchView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: bookView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: homeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage<void>(
            key: state.pageKey,
            child: const HomeView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
    ],
  );
}
