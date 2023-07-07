import 'package:flutter/material.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';

class CardSettingTrip extends StatelessWidget {
  const CardSettingTrip({super.key, required this.fun});
  final Function fun;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {
              fun.call();
            },
            child: const Text(
              'تغير الوقت',
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.hintText,
                  decoration: TextDecoration.underline,
                  color: AppColors.smallTextColor),
            )),
        const Text(
          '6 ص - 8 ص',
          style: TextStyle(
              fontFamily: 'Cairo',
              color: AppColors.smallText,
              fontSize: AppFontSize.hintText),
        ),
        const Text(
          'رحلة الذهاب للمدرسة',
          style: TextStyle(
              fontFamily: 'Cairo',
              color: AppColors.smallText,
              fontSize: AppFontSize.hintText),
        )
      ],
    );
  }
}
