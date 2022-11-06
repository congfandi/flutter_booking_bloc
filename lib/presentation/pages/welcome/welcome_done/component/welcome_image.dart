import 'package:booking/config/theme/app_dimen.dart';
import 'package:booking/data/src/img_string.dart';
import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Image.asset(ImgString.backdrop),
    ));
  }
}
