import 'package:bloc/bloc.dart';
import 'package:booking/config/router/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

import 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeState().init());

  AppRouter get _appRouter => GetIt.I<AppRouter>();

  void handleBtnExplore() {
    _appRouter.replace(const DiscoverRoute());
  }

  void handleBtnLogin() {
    _appRouter.push(const LoginRoute());
  }
}
