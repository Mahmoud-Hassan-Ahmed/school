import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';
import 'package:school/core/widgets/buttons/but_save_cancel.dart';

class SheetCalendarWidget extends StatelessWidget {
  const SheetCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'تحديد وقت رحلة الذهاب',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintFormField,
                    color: AppColors.smallText),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'بداية',
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.hintFormField - 2,
                  color: AppColors.smallText),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Stack(
                children: [
                  TimePickerSpinner(
                    is24HourMode: false,
                    normalTextStyle: const TextStyle(
                        fontSize: AppFontSize.hintText,
                        color: AppColors.bgSendMessage),
                    highlightedTextStyle: const TextStyle(
                        fontSize: AppFontSize.hintText,
                        color: AppColors.smallText),
                    spacing: 50,
                    itemHeight: 40,
                    isForce2Digits: true,
                    onTimeChange: (time) {},
                  ),
                  Positioned(
                    top: 40,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.smallTextColor.withOpacity(.3),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'نهاية',
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.hintFormField - 2,
                  color: AppColors.smallText),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Stack(
                children: [
                  TimePickerSpinner(
                    is24HourMode: false,
                    normalTextStyle: const TextStyle(
                        fontSize: AppFontSize.hintText,
                        color: AppColors.bgSendMessage),
                    highlightedTextStyle: const TextStyle(
                        fontSize: AppFontSize.hintText,
                        color: AppColors.smallText),
                    spacing: 50,
                    itemHeight: 40,
                    isForce2Digits: true,
                    onTimeChange: (time) {},
                  ),
                  Positioned(
                    top: 40,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.smallTextColor.withOpacity(.3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Directionality(
                textDirection: TextDirection.rtl,
                child: ButtonSaveCancelWidget(onSave: () {}, onCancel: () {}))
          ],
        ),
      ),
    );
  }
}
