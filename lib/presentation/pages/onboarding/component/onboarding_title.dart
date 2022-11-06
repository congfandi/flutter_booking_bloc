import 'package:booking/config/config.dart';
import 'package:booking/utils/extension/extension.dart';
import 'package:booking/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              cubit.state.onboardingList[cubit.state.currentIndex].title ?? "",
              style: AppFont.h3,
              textAlign: TextAlign.center,
            ),
            8.0.height,
            Text(
              cubit.state.onboardingList[cubit.state.currentIndex]
                      .description ??
                  "",
              textAlign: TextAlign.center,
              style: AppFont.paragraphMedium,
            ),
          ],
        );
      },
    );
  }
}
