import 'package:booking/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/component.dart';
import 'onboarding_cubit.dart';
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnboardingCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            const OnboardingImage(),
            32.0.height,
            const OnboardingTitle(),
            45.0.height,
            const OnboardingIndicator(),
            53.0.height,
            const OnboardingButton(),
            82.9.height,
          ],
        ),
      ),
    );
  }
}
