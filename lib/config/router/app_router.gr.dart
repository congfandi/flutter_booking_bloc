// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WelcomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    DiscoverRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DiscoverPage(),
      );
    },
    TripsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TripsPage(),
      );
    },
    DetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DetailPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FavoritePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/onboarding',
          fullMatch: true,
        ),
        RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding',
        ),
        RouteConfig(
          WelcomeRoute.name,
          path: '/welcome',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          RegisterRoute.name,
          path: '/register',
        ),
        RouteConfig(
          DiscoverRoute.name,
          path: '/discover',
        ),
        RouteConfig(
          TripsRoute.name,
          path: '/trips',
        ),
        RouteConfig(
          DetailRoute.name,
          path: '/detail',
        ),
        RouteConfig(
          SettingsRoute.name,
          path: '/settings',
        ),
        RouteConfig(
          FavoriteRoute.name,
          path: '/favorite',
        ),
      ];
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [WelcomePage]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute()
      : super(
          WelcomeRoute.name,
          path: '/welcome',
        );

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [DiscoverPage]
class DiscoverRoute extends PageRouteInfo<void> {
  const DiscoverRoute()
      : super(
          DiscoverRoute.name,
          path: '/discover',
        );

  static const String name = 'DiscoverRoute';
}

/// generated route for
/// [TripsPage]
class TripsRoute extends PageRouteInfo<void> {
  const TripsRoute()
      : super(
          TripsRoute.name,
          path: '/trips',
        );

  static const String name = 'TripsRoute';
}

/// generated route for
/// [DetailPage]
class DetailRoute extends PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '/settings',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [FavoritePage]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: '/favorite',
        );

  static const String name = 'FavoriteRoute';
}
