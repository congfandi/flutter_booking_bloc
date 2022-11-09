// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../../presentation/pages/discover/discover_view.dart' as _i5;
import '../../presentation/pages/discover/favorite/favorite_view.dart' as _i9;
import '../../presentation/pages/discover/settings/settings_view.dart' as _i8;
import '../../presentation/pages/discover/trips/detail/detail_view.dart' as _i7;
import '../../presentation/pages/discover/trips/trips_view.dart' as _i6;
import '../../presentation/pages/onboarding/onboarding_view.dart' as _i1;
import '../../presentation/pages/welcome/login/login_view.dart' as _i3;
import '../../presentation/pages/welcome/register/register_view.dart' as _i4;
import '../../presentation/pages/welcome/welcome_view.dart' as _i2;
import 'middleware/auth_guard.dart' as _i13;
import 'middleware/first_install_guard.dart' as _i12;

class AppRouter extends _i10.RootStackRouter {
  AppRouter({
    _i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
    required this.firstInstallGuard,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i12.FirstInstallGuard firstInstallGuard;

  final _i13.AuthGuard authGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardingPage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterPage(),
      );
    },
    DiscoverRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.DiscoverPage(),
      );
    },
    TripsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.TripsPage(),
      );
    },
    DetailRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.DetailPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.FavoritePage(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/onboarding',
          fullMatch: true,
        ),
        _i10.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding',
          guards: [firstInstallGuard],
        ),
        _i10.RouteConfig(
          WelcomeRoute.name,
          path: '/welcome',
          guards: [authGuard],
        ),
        _i10.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i10.RouteConfig(
          RegisterRoute.name,
          path: '/register',
        ),
        _i10.RouteConfig(
          DiscoverRoute.name,
          path: '/discover',
        ),
        _i10.RouteConfig(
          TripsRoute.name,
          path: '/trips',
        ),
        _i10.RouteConfig(
          DetailRoute.name,
          path: '/detail',
        ),
        _i10.RouteConfig(
          SettingsRoute.name,
          path: '/settings',
        ),
        _i10.RouteConfig(
          FavoriteRoute.name,
          path: '/favorite',
        ),
        _i10.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/discover',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.OnboardingPage]
class OnboardingRoute extends _i10.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i2.WelcomePage]
class WelcomeRoute extends _i10.PageRouteInfo<void> {
  const WelcomeRoute()
      : super(
          WelcomeRoute.name,
          path: '/welcome',
        );

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i5.DiscoverPage]
class DiscoverRoute extends _i10.PageRouteInfo<void> {
  const DiscoverRoute()
      : super(
          DiscoverRoute.name,
          path: '/discover',
        );

  static const String name = 'DiscoverRoute';
}

/// generated route for
/// [_i6.TripsPage]
class TripsRoute extends _i10.PageRouteInfo<void> {
  const TripsRoute()
      : super(
          TripsRoute.name,
          path: '/trips',
        );

  static const String name = 'TripsRoute';
}

/// generated route for
/// [_i7.DetailPage]
class DetailRoute extends _i10.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '/settings',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i9.FavoritePage]
class FavoriteRoute extends _i10.PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: '/favorite',
        );

  static const String name = 'FavoriteRoute';
}
