import 'package:cv_online/screens/academic_screen/academic_screen.dart';
import 'package:cv_online/screens/contact_screen/contact_screen.dart';
import 'package:cv_online/screens/language_screen/language_screen.dart';
import 'package:cv_online/screens/skills_screen/skills_screen.dart';
import 'package:cv_online/screens/summary_screen/summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/color/color.dart';
import '../utils/images/images.dart';
import 'home_screen/home_screen.dart';

class TabBox1 extends StatefulWidget {
  const TabBox1({super.key});

  @override
  State<TabBox1> createState() => _TabBox1State();
}

class _TabBox1State extends State<TabBox1> {
  List<Widget> _screens = [];
  int _activeIndex = 0;

  @override
  void initState() {
    _screens = [
      const HomeScreen(),
      const SummaryScreen(),
      const AcademicScreen(),
      const SkillsScreen(),
      const LanguageScreen(),
      const ContactScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newActiveIndex) {
          _activeIndex = newActiveIndex;
          setState(() {});
        },
        currentIndex: _activeIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        backgroundColor: AppColor.uiBlue,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.fast),
            icon: SvgPicture.asset(AppImages.fast),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.study),
            icon: SvgPicture .asset(AppImages.study),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.arrow),
            icon: SvgPicture.asset(AppImages.arrow),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.skills),
            icon: SvgPicture.asset(AppImages.skills),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.language,
              size: 25.sp,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.language,
              size: 25.sp,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.contact),
            icon: SvgPicture.asset(AppImages.contact),
            label: "",
          ),
        ],
      ),
    );
  }
}