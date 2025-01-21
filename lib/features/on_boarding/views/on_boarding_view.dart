import 'package:flutter/material.dart';
import 'package:record/core/database/cache/cache_processor.dart';
import 'package:record/core/utls/app_assets.dart';
import 'package:record/core/widgets/custom_button.dart';
import 'package:record/features/on_boarding/views/presentation/custom_nav_bar.dart';
import 'package:record/features/on_boarding/views/widgets/on_boarding_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:record/core/utls/app_text_style.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final List<String> images = <String>[
    Assets.assetsImagesCar1,
    Assets.assetsImagesCar2,
    Assets.assetsImagesCar3,
  ];

  final PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            const SizedBox(
              height: 35,
            ),
            CustomNavBar(controller: pageController),
            const SizedBox(
              height: 40,
            ),
            OnBoardingBodyView(
              controller: pageController,
            ),
            const CustomButton(),
            const SizedBox(
              height: 25,
            ),
            const Text("Sign up"),
            const SizedBox(
              height: 25,
            ),
            const Text("Sign in")
          ],
        ),
      )),
    );
  }
}
