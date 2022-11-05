import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/component.dart';
import 'onboarding_cubit.dart';
import 'onboarding_state.dart';

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
      body: Column(
        children: const [
          OnboardingImage(),
          OnboardingTitle(),
          OnboardingIndicator(),
          OnboardingButton(),
        ],
      ),
    );
  }
}
