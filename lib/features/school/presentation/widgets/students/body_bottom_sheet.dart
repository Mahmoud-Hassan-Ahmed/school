import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/theme/font_size.dart';
import 'package:school/core/widgets/buttons/but_save_cancel.dart';

class SheetBottomForAddStudentWidget extends StatelessWidget {
  const SheetBottomForAddStudentWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    List<String> dropdownOptions = [
      'Option 1',
      'Option 2',
      'Option 3',
    ];
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.hintFormField,
                  color: AppColors.smallText),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/add_image_pro.png',
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/icons/add_image.svg')),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.white,
                    height: 50,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        labelText: 'الاسم ',
                        hintText: 'الاسم ',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    height: 50,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        hintText: 'رقم الجوال',
                        labelText: 'رقم الجوال',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: TextFormField(
                      controller: fullNameController,
                      decoration: const InputDecoration(
                          labelText: 'البريد الإلكتروني',
                          border: OutlineInputBorder(),
                          hintText: 'الاسم الكامل'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'كلمة المرور',
                          hintText: 'كلمة المرور'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: DropdownButtonFormField<String>(
                      onChanged: (value) {},
                      value: null,
                      items: dropdownOptions.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'اختيار مجموعة',
                          hintText: 'اختيار مجموعة'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonSaveCancelWidget(onSave: () {}, onCancel: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
