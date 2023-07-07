import 'package:flutter/material.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';

class CardViewWidget extends StatelessWidget {
  const CardViewWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.bgRec,
      required this.bgFooter});
  final String image, title;
  final Color bgRec;
  final Color bgFooter;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgRec,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              image,
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.width / 3 - 30,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: bgFooter,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            width: MediaQuery.of(context).size.width / 3 + 20,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Cairo',
                  color: AppColors.smallText,
                  fontSize: AppFontSize.hintText),
            ),
          )
        ],
      ),
    );
  }
}
