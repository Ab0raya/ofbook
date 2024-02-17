import 'package:go_router/go_router.dart';
import 'package:ofbook/features/home_feature/presentation/views/home_view.dart';
import 'package:ofbook/features/splash_feature/presentation/views/splash_view.dart';

import '../../features/home_feature/presentation/views/book_details_view.dart';

abstract class AppRouter{
  static String homeViewPath ='/HomeView';
  static String bookDetailsViewPath ='/bookDetailsView';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),GoRoute(
        path: bookDetailsViewPath,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}