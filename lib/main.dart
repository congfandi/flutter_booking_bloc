import 'package:booking/data/src/img_string.dart';
import 'package:booking/presentation/pages/discover/discover_view.dart';
import 'package:booking/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:booking/presentation/pages/onboarding/onboarding_view.dart';
import 'package:booking/presentation/pages/welcome/login/login_view.dart';
import 'package:booking/presentation/pages/welcome/welcome_done/welcome_done_view.dart';
import 'package:booking/presentation/pages/welcome/welcome_view.dart';
import 'package:booking/presentation/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logging/logging.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    debugPrint(record.message);
  });
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
