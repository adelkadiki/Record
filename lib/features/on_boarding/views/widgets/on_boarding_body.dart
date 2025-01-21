import 'package:flutter/material.dart';
import 'package:record/core/utls/app_assets.dart';
import 'package:record/core/utls/app_text_style.dart';
import 'package:record/core/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBodyView extends StatelessWidget {
  OnBoardingBodyView({
    super.key,
    required this.controller,
  });

  final PageController controller;
  //final Function(int) onChanged;

  final List<String> images = <String>[
    Assets.assetsImagesCar1,
    Assets.assetsImagesCar2,
    Assets.assetsImagesCar3,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 150,
          child: PageView.builder(
            //  onPageChanged: onChanged,
            physics: const BouncingScrollPhysics(),
            controller: controller,
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
          pageController: controller,
          length: images.length,
        ),
        const SizedBox(height: 25),
        Text(
          "تطبيق رائع جداً",
          style: AppTextStyle.mainLine,
          textAlign: TextAlign.center,
        ),
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
