import 'package:booking/config/config.dart';
import 'package:booking/presentation/pages/welcome/welcome_done/component/welcome_button.dart';
import 'package:booking/presentation/pages/welcome/welcome_done/component/welcome_title.dart';
import 'package:booking/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/welcome_image.dart';
import 'welcome_done_cubit.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Welcome_doneCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<Welcome_doneCubit>(context);
    return Scaffold(
      backgroundColor: AppColor.accentGreen,
      body: Column(
        children: [
          102.0.height,
          const WelcomeImage(),
          24.0.height,
          const WelcomeTitle(),
          24.0.height,
          const WelcomeButton(),
          95.0.height
        ],
      ),
    );
  }
}
