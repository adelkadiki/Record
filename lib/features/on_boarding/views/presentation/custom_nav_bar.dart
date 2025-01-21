import 'package:flutter/material.dart';
import 'package:record/core/functions/navigation.dart';
import 'package:record/core/utls/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          customNavigation(context, "/signUpView");
        },
        child: Text(
          "skip",
          style: TextStyle(
              backgroundColor: AppColors.primaryColor, color: Colors.black),
        ),
      ),
    );
  }
}
