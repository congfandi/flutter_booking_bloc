import 'package:booking/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking/presentation/widget/primary_button.dart';
import 'package:booking/presentation/widget/secondary_button.dart';
import 'package:booking/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          onPressed: cubit.skip,
          text: "Skip",
          width: 147.5,
        ),
        16.0.width,
        PrimaryButton(
          onPressed: cubit.next,
          text: "Next",
          width: 147.5,
        ),
      ],
    );
  }
}
