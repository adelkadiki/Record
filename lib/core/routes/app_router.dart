import 'package:go_router/go_router.dart';
import 'package:record/features/on_boarding/views/on_boarding_view.dart';
import 'package:record/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashView()),
  GoRoute(
      path: '/onBoarding', builder: (context, state) => const OnBoardingView())
]);
