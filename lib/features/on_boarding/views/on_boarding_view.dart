import 'package:flutter/material.dart';
import 'package:record/core/utls/app_assets.dart';
import 'package:record/core/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:record/core/utls/app_text_style.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [const Text('On Boarding View'), OnBoardingBodyView()],
      )),
    );
  }
}

class OnBoardingBodyView extends StatelessWidget {
  OnBoardingBodyView({super.key});

  final List<String> images = [
    Assets.assetsImagesCar1,
    Assets.assetsImagesCar2,
    Assets.assetsImagesCar3,
  ];

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 150,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),
        CustomSmoothPageIndicator(
          pageController: _pageController,
          length: images.length,
        ),
        const SizedBox(height: 25),
        Text(
          "تطبيق رائع جداً",
          style: AppTextStyle.mainLine,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 25),
        const CustomButton(),
      ],
    );
  }
}

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator(
      {super.key, required this.pageController, required this.length});
  final PageController pageController;
  final int length;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: length,
      effect: const ScrollingDotsEffect(),
    );
  }
}
