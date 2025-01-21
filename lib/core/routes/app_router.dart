import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:record/core/services/service_locator.dart';
import 'package:record/features/auth/cubit/auth_cubit.dart';
import 'package:record/features/auth/views/sign_in_view.dart';
import 'package:record/features/auth/views/sign_up_view.dart';
import 'package:record/features/on_boarding/views/on_boarding_view.dart';
import 'package:record/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashView()),
  GoRoute(
      path: '/onBoarding', builder: (context, state) => const OnBoardingView()),
  GoRoute(path: '/signUpView', builder: (context, state) => const SignUpView()),
  GoRoute(
      path: '/signInView',
      builder: (context, state) => BlocProvider(
          create: (context) => getIt<AuthCubit>(), child: const SignInView()))
]);
