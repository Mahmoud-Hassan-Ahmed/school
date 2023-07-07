import 'package:flutter/material.dart';
import 'package:school/core/widgets/appbar/with_title.dart';
import 'package:school/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:school/features/school/presentation/widgets/message/messages.dart';
import 'package:school/features/school/presentation/widgets/tracking_bus/card_tracking.dart';

class TrackingBusPage extends StatefulWidget {
  const TrackingBusPage({super.key});

  @override
  State<TrackingBusPage> createState() => _TrackingBusPageState();
}

class _TrackingBusPageState extends State<TrackingBusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomBarWidget(
        indexActive: 2,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'تتبع الباص',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          const SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                CardTrackingWidget(
                  color: Color(0xFFE8F6E8),
                  text: 'الرحلة فعالة',
                ),
                CardTrackingWidget(
                  color: Color(0xFFF6E8EC),
                  text: 'لا توجد رحلة',
                ),
                CardTrackingWidget(
                  color: Color(0xFFE8F6E8),
                  text: 'الرحلة فعالة',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
