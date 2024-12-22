// import 'package:go_router/go_router.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:record/core/routes/app_router.dart';

void onBoardingNavigation(BuildContext context, String path) {
  GoRouter.of(context).push(path);
}

void pushReplacementNavigator(BuildContext context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
