import 'package:booking/config/theme/app_dimen.dart';
import 'package:booking/presentation/pages/welcome/welcome_cubit.dart';
import 'package:booking/presentation/widget/widget.dart';
import 'package:booking/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<WelcomeCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
                onPressed: cubit.handleBtnExplore, text: "Explore"),
          ),
          16.0.width,
          Expanded(
            child:
                SecondaryButton(onPressed: cubit.handleBtnLogin, text: "Login"),
          ),
        ],
      ),
    );
  }
}
