import 'package:flutter/material.dart';
import 'package:school/core/helper/AppUtils.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';
import 'package:school/features/school/presentation/pages/attendence.dart';

class TrackCardWidget extends StatelessWidget {
  const TrackCardWidget(
      {super.key,
      required this.images,
      required this.title,
      required this.subtitle,
      required this.titleBtn});
  final String images;
  final String title;
  final String subtitle;
  final String titleBtn;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: AppColors.smallText,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.smallText * 2),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: AppFontSize.smallText,
                        color: AppColors.smallTextColor),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                          onPressed: () {
                            AppUtils.pushTo(context, const AttendencePage());
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            backgroundColor: AppColors.smallTextColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                15,
                              ), // Adjust the radius value as needed
                            ),
                          ),
                          child: Text(
                            titleBtn,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText + 3,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Image.asset(
                  images,
                )),
          ],
        ),
      ),
    );
  }
}
