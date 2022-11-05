import 'package:booking/data/src/img_string.dart';
import 'package:booking/presentation/pages/onboarding/onboarding_view.dart';
import 'package:booking/presentation/widget/widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const OnboardingPage(),
    );
  }
}