import 'package:auto_route/auto_route.dart';
import 'package:booking/config/router/app_router.gr.dart';
import 'package:booking/utils/helper/pref_helper.dart';

class FirstInstallGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isFirstInstall = PrefHelper.instance.isFirstInstall;
    if (isFirstInstall) {
      resolver.next();
    } else {
      router.replace(const WelcomeRoute());
    }
  }
}
