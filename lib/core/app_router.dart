
import 'package:go_router/go_router.dart';
import 'package:movi_mobile_app/Features/home/presentation/views/Home_screen.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/onBoarding_screen.dart';

import '../Features/movi_details/presetation/views/movie_detail_screen.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsscreen = '/detailsscreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeViewBody(),
      ),
      GoRoute(
        path: kDetailsscreen,
        builder: (context, state) => const MovieDetailScreen(),
      ),
    ],
  );
}
