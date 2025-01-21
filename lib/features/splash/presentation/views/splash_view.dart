import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:record/core/database/cache/cache_processor.dart';
import 'package:record/core/routes/app_router.dart';
import 'package:record/core/services/service_locator.dart';
import 'package:record/core/utls/app_text_style.dart';
import 'package:record/core/routes/app_router.dart';
import 'package:record/core/functions/navigation.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool userVisit =
        getIt<CacheProcessor>().getBoolData(key: "visited") ?? false;
    print(userVisit);
    if (userVisit) {
      navigateToOnBoardingOrSignUp(context, "/signUpView");
    } else {
      navigateToOnBoardingOrSignUp(context, "/onBoarding");
    }

    super.initState();
  }

  // Method which called within the initState()
  void navigateToOnBoardingOrSignUp(BuildContext context, String path) {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        GoRouter.of(context).push(path);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'السجل',
          style: AppTextStyle.mainLine,
        ),
      ),
    );
  }
}
