import 'package:bokly_app/features/home/presentation/view_models/views/book_details_view.dart';
import 'package:bokly_app/features/home/presentation/view_models/views/home_view.dart';
import 'package:bokly_app/features/search/view_models/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = "/bookDetailsView";
  static const kSearchView = "/searchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SPlashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
