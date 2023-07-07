import 'dart:math';

import 'package:flutter/material.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';

class AppBarCalendar extends SliverPersistentHeaderDelegate {
  final BuildContext context;
  final Function callBack;
  final Widget callendar;
  AppBarCalendar(
      {required this.context, required this.callBack, required this.callendar});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var topBar = Positioned(
      top: -25,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        decoration: const BoxDecoration(
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "تقديم طلب غياب",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontSize: AppFontSize.titleFont - 4),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'اسم الطالب',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: AppFontSize.hintText,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'ادخل ٣ حروف علي الاقل',
                      hintStyle: const TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.smallText,
                          color: AppColors.hint)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return SizedBox(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          topBar,
          Positioned(
              top: (MediaQuery.of(context).size.height / 3) / 1.3,
              left: 10,
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 3,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: callendar,
              )),
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(context).size.height / 3) +
      ((MediaQuery.of(context).size.height / 3) / 1.3);

  @override
  double get minExtent =>
      (MediaQuery.of(context).size.height / 3) +
      ((MediaQuery.of(context).size.height / 3) / 2);

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
