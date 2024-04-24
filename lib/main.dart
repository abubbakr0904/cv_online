import 'package:cv_online/screens/academic_screen/academic_screen.dart';
import 'package:cv_online/screens/contact_screen/contact_screen.dart';
import 'package:cv_online/screens/home_screen/home_screen.dart';
import 'package:cv_online/screens/language_screen/language_screen.dart';
import 'package:cv_online/screens/skills_screen/skills_screen.dart';
import 'package:cv_online/screens/summary_screen/summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        ScreenUtil.init(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const ContactScreen(),
    );
  }
}
