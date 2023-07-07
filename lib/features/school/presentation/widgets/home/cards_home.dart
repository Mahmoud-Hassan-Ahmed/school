import 'package:flutter/material.dart';
import 'package:school/core/helper/AppUtils.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';

// import 'package:school/features/school/presentation/pages/choose_sons.dart';
// import 'package:school/features/school/presentation/pages/sons_page.dart';
// import 'package:school/features/school/presentation/pages/tracking_sons_page.dart';

class CardsHomeWidgets extends StatelessWidget {
  const CardsHomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Card(
            elevation: 6.0,
            color: Colors.amber,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(right: 14),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'الباص متجه إلي المنزل',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.smallText,
                          fontFamily: 'Cairo'),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(
                                    'تتبع الرحلة',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColors.smallText,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.bold,
                                        fontSize: AppFontSize.smallText * 2),
                                  ),
                                ),
                                Text(
                                  'يمكن الضغط هنا لتتبع وصول السائق',
                                  style: TextStyle(
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
                                          // AppUtils.pushTo(context,
                                          //     const TrackingSonsPage());
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          backgroundColor:
                                              AppColors.smallTextColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ), // Adjust the radius value as needed
                                          ),
                                        ),
                                        child: Text(
                                          "ابدأ في التتبع",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Cairo',
                                              fontSize:
                                                  AppFontSize.smallText + 3,
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
                                'assets/images/image_bus1.png',
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: Row(children: [
                  Expanded(
                      flex: 1,
                      child: Image.asset('assets/images/attendence.png')),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'طلب غياب',
                            style: TextStyle(
                                color: AppColors.smallText,
                                fontSize: AppFontSize.titleFont,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'يمكنك الضغط هنا لتسجيل طلب غياب عن الذهاب أو العودة مع الباص المدرسي ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.smallTextColor,
                                  fontSize: AppFontSize.smallText,
                                  fontFamily: 'Cairo'),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                // AppUtils.pushTo(
                                //     context, const ChooseSonsPage());
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                backgroundColor: AppColors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ), // Adjust the radius value as needed
                                ),
                              ),
                              child: Text(
                                "طلب غياب",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Cairo',
                                    fontSize: AppFontSize.smallText + 3,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ))
                ]),
              )),
          Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'المزيد',
                          style: TextStyle(
                              color: AppColors.smallText,
                              fontSize: AppFontSize.hintText - 1,
                              fontFamily: 'Cairo'),
                        ),
                      ),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                        height: 3,
                        color: AppColors.smallText,
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap: () {
                                // AppUtils.pushTo(context, const SonsPage());
                              },
                              child: Image.asset('assets/images/kids.png')),
                          Image.asset('assets/images/address.png'),
                          Image.asset('assets/images/driver.png'),
                        ],
                      ))
                    ],
                  )))
        ],
      ),
    );
  }
}
