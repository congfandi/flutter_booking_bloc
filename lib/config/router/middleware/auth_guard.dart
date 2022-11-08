import 'package:auto_route/auto_route.dart';
import 'package:booking/config/router/app_router.dart';
import 'package:booking/utils/helper/pref_helper.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isLogin = PrefHelper.instance.token.isNotEmpty;
    if (isLogin) {
      router.replace(const DiscoverRoute());
    } else {
      router.replace(const LoginRoute());
    }
  }
}
