import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';
import 'package:school/features/school/presentation/bloc/attendence/attendence_bloc.dart';

class AppBarAttendence extends SliverPersistentHeaderDelegate {
  late double minTopBarHeight = MediaQuery.of(context).size.height / 4;
  late double maxTopBarHeight = MediaQuery.of(context).size.height / 3;
  final BuildContext context;
  final Widget? widget;
  final String title;
  AppBarAttendence({
    required this.context,
    this.widget,
    required this.title,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height: maxTopBarHeight,
        decoration: const BoxDecoration(
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: SizedBox(
                      height: 35,
                      child: TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.bgSendMessage),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size.zero),
                        ),
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: SvgPicture.asset(
                            'assets/icons/download.svg',
                            height: 12,
                            width: 12,
                            color: AppColors.smallText,
                          ),
                        ),
                        label: const Text(
                          'تحميل التقرير',
                          softWrap: false,
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintText - 2,
                            color: AppColors.smallText,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: AppFontSize.smallText * 2,
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )),
              ],
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  onTap: (value) {
                    AttendenceBloc.get(context)
                        .add(ChooseAttendenceEvent(value));
                  },
                  indicatorPadding: const EdgeInsets.only(left: 50),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                        child: Text(
                      ' الطلبات الحالية ',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintFormField,
                          fontWeight: FontWeight.bold),
                    )),
                    Tab(
                        child: Text(
                      'الطلبات السابقة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintFormField,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
            )
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
          if (widget != null)
            Positioned(
                top: (MediaQuery.of(context).size.height / 4),
                left: 0,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5.7,
                child: widget!)
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      maxTopBarHeight + (MediaQuery.of(context).size.height / 5.7) / 2;

  @override
  double get minExtent =>
      maxTopBarHeight + (MediaQuery.of(context).size.height / 5.7) / 2;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
