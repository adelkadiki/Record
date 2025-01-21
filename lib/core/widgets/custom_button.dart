import 'package:flutter/material.dart';
import 'package:record/core/utls/app_colors.dart';
import 'package:record/core/database/cache/cache_processor.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  //final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          CacheProcessor().saveBool(key: "visited", data: true);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: const Text('Next'),
      ),
    );
  }
}
