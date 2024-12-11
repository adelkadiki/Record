import 'package:go_router/go_router.dart';
import 'package:record/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashView())
]);
