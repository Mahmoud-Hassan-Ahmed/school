import 'package:flutter/material.dart';
import 'package:school/core/widgets/appbar/with_title.dart';
import 'package:school/features/school/presentation/widgets/settings_trips/card_settings.dart';
import 'package:school/features/school/presentation/widgets/settings_trips/sheet_calendar.dart';

class SettingsTripPage extends StatefulWidget {
  const SettingsTripPage({super.key});

  @override
  State<SettingsTripPage> createState() => _SettingsTripPageState();
}

class _SettingsTripPageState extends State<SettingsTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'إعدادات الرحلات',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          SliverFillRemaining(
            // hasScrollBody: true,
            child: Column(
              children: [
                CardSettingTrip(
                  fun: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (context) {
                        return const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: SheetCalendarWidget());
                      },
                    );
                  },
                ),
                CardSettingTrip(
                  fun: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (context) {
                        return const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: SheetCalendarWidget());
                      },
                    );
                  },
                ),
                Expanded(
                    child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset('assets/images/calendar.png'),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
