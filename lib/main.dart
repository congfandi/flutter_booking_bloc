import 'package:booking/data/src/img_string.dart';
import 'package:booking/presentation/pages/onboarding/onboarding_view.dart';
import 'package:booking/presentation/pages/welcome/login/login_view.dart';
import 'package:booking/presentation/pages/welcome/welcome_view.dart';
import 'package:booking/presentation/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Booking App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: 'Poppins',
            ),
            home: const LoginPage(),
          );
        });
  }
}
