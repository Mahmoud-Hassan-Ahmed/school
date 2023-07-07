import 'package:flutter/material.dart';
import 'package:school/core/helper/AppUtils.dart';
import 'package:school/core/widgets/appbar/with_carousal.dart';
import 'package:school/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:school/features/school/presentation/pages/students.dart';
import 'package:school/features/school/presentation/widgets/home/card_view.dart';
import 'package:school/features/school/presentation/widgets/home/track_card.dart';
// import 'package:school/features/home/presentation/widgets/home/cards_home.dart';
// import 'package:school/features/home/presentation/widgets/home/carousal_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(
        indexActive: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: WithCarousalBar(
                context: context,
                carousal: const TrackCardWidget(
                  images: 'assets/images/image_bus1.png',
                  title: 'الرحلات',
                  subtitle: 'يمكن الضغط هنا لتتبع وصول السائق',
                  titleBtn: "ابدأ في التتبع",
                )),
          ),
          SliverFillRemaining(
              // fillOverscroll: true,
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CardViewWidget(
                          image: 'assets/images/parents.png',
                          title: 'أولياء الأمور',
                          bgFooter: Color(0xFFBBDEF9),
                          bgRec: Color(0xFF5BA6D6),
                        ),
                        GestureDetector(
                          onTap: () {
                            AppUtils.pushTo(context, const StudentPage());
                          },
                          child: const CardViewWidget(
                            image: 'assets/images/students.png',
                            title: 'الطلاب',
                            bgRec: Color(0xFF5FA369),
                            bgFooter: Color(0xFFA3C3A5),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardViewWidget(
                          image: 'assets/images/buses.png',
                          title: 'الباصات',
                          bgFooter: Color(0xFFFFC555),
                          bgRec: Color(0xFFFFD786),
                        ),
                        CardViewWidget(
                          image: 'assets/images/ambassador.png',
                          title: 'المشرفين',
                          bgRec: Color(0xFFE57549),
                          bgFooter: Color(0xFFE39D7D),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardViewWidget(
                          image: 'assets/images/advertisement.png',
                          title: 'الإعلانات',
                          bgFooter: Color(0xFFBBDEF9),
                          bgRec: Color(0xFF5BA6D6),
                        ),
                        CardViewWidget(
                          image: 'assets/images/notifications.png',
                          title: 'الإشعارات',
                          bgRec: Color(0xFF5FA369),
                          bgFooter: Color(0xFFA3C3A5),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TrackCardWidget(
                      images: 'assets/images/groups.png',
                      title: 'المجموعات ',
                      subtitle: 'يمكنك الضغط هنا لمعرفه المجموعات',
                      titleBtn: 'متابعة',
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
