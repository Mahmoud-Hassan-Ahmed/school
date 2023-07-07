import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:school/core/dialog/delete.dart';
import 'package:school/core/dialog/done.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school/features/school/presentation/widgets/students/body_bottom_sheet.dart';

class CardSonsWidget extends StatelessWidget {
  const CardSonsWidget({super.key, this.callBack, this.border = false});
  final Function? callBack;
  final bool border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack != null
          ? () {
              callBack!.call();
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: border ? const BorderSide() : BorderSide.none),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  deleteDialog(
                                      context,
                                      'حذف الطالب',
                                      'هل انت متأكد انك تريد حذف الطالب؟',
                                      'نعم',
                                      'لا', () {
                                    Navigator.pop(context);
                                    dilaogDone(context, 'تم الحذف',
                                        'الرجوع لقائمة الطلاب', () {
                                      Navigator.pop(context);
                                    }).show();
                                  }, () {
                                    Navigator.pop(context);
                                  }).show();
                                },
                                icon: SvgPicture.asset(
                                    'assets/icons/delete_raduis.svg')),
                            IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    backgroundColor: Colors.white,
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: SingleChildScrollView(
                                              child: Padding(
                                            padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .viewInsets
                                                  .bottom,
                                            ),
                                            child:
                                                const SheetBottomForAddStudentWidget(
                                                    title:
                                                        'تعديل بروفايل الطالب'),
                                          )));
                                    },
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/icons/edit_raduis.svg',
                                ))
                          ],
                        ))),
                FDottedLine(
                  color: Colors.black,
                  height: 50.0,
                  strokeWidth: 1.0,
                  space: 0,
                ),
                const Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'اسم الطالب',
                          style: TextStyle(
                              fontSize: AppFontSize.hintText,
                              color: AppColors.smallText,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'اسم المجموعة',
                          style: TextStyle(
                            fontSize: AppFontSize.hintText - 3,
                            color: AppColors.smallText,
                            fontFamily: 'Cairo',
                          ),
                        )
                      ],
                    )),
                const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/parent.png'),
                      ),
                    )),
              ],
            )),
      ),
    );
  }
}
