import 'package:flutter/material.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';

class SheetSelectDateWidget extends StatelessWidget {
  const SheetSelectDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'تم',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField,
                      color: AppColors.orange,
                      fontWeight: FontWeight.bold),
                )),
            const Expanded(
                child: Text(
              'اختر تاريخ لتقرير',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.hintText,
                  color: AppColors.smallText),
            ))
          ],
        ),
        const Text(
          'تاريخ اليوم ١٥/٦/٢٠٢٣',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: AppFontSize.hintText,
            color: AppColors.hint,
          ),
        ),
      ],
    );
  }
}
