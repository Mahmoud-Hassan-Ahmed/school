import 'package:flutter/material.dart';
import 'package:school/core/widgets/buttons/full_width_btn.dart';
import 'package:school/features/school/presentation/widgets/students/body_bottom_sheet.dart';

class AddBtnFullBottom extends StatelessWidget {
  const AddBtnFullBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: FullWidthBtn(
              label: 'إضافة طالب',
              callBack: () {
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
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: const SheetBottomForAddStudentWidget(
                            title: 'إضافة طالب',
                          ),
                        )));
                  },
                );
              })),
    );
  }
}
