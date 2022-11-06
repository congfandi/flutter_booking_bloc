import 'package:booking/config/config.dart';
import 'package:booking/presentation/pages/discover/favorite/component/favorite_header.dart';
import 'package:booking/presentation/pages/discover/favorite/component/favorite_list.dart';
import 'package:booking/presentation/pages/discover/favorite/component/favorite_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'favorite_cubit.dart';

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

    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(
        children: const [
          FavoriteTitle(),
          FavoriteHeader(),
          FavoriteList()
        ],
      ),
    );
  }
}
