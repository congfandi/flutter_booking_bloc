import 'package:booking/config/config.dart';
import 'package:booking/utils/extension/extension.dart';
import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w32),
      child: Column(
        children: [
          Text(
            "Find Your Roomie",
            style: AppFont.h4,
          ),
          8.0.height,
          Text(
            "We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFont.paragraphSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
