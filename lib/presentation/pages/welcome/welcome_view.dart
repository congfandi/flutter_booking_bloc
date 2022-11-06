import 'package:booking/config/theme/theme.dart';
import 'package:booking/presentation/pages/welcome/component/welcome_button.dart';
import 'package:booking/presentation/pages/welcome/component/welcome_image.dart';
import 'package:booking/presentation/pages/welcome/component/welcome_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'welcome_cubit.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WelcomeCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.accentBlue,
      body: Column(
        children: const [
          WelcomeTitle(),
          WelcomeButton(),
          WelcomeImage()
        ],
      ),
    );
  }
}
