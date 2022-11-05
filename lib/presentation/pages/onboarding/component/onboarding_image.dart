import 'package:booking/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Expanded(
      child: PageView.builder(
        itemBuilder: (c, i) => Image.asset(
          cubit.state.onboardingList[i].image ?? "",
        ),
        itemCount: cubit.state.onboardingList.length,
        onPageChanged: cubit.goTo,
      ),
    );
  }
}
