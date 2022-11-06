import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'favorite_cubit.dart';
import 'favorite_state.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FavoriteCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<FavoriteCubit>(context);

    return Container();
  }
}


