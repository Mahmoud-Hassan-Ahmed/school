import 'package:flutter/material.dart';
import 'package:school/core/theme/colors.dart';
import 'package:school/core/widgets/appbar/with_title.dart';
import 'package:school/core/widgets/bottom_bar/add_bottom.dart';
import 'package:school/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:school/features/school/presentation/widgets/students/card_student.dart';
import 'package:school/features/school/presentation/widgets/students/search.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const AddBtnFullBottom(),
      backgroundColor: AppColors.bgSendMessage,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'الطلاب',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SearchWidget(),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
