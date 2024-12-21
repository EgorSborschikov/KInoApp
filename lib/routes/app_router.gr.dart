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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import '../features/pages/auth/authorization/auth_page/auth_page.dart' as _i2;
import '../features/pages/auth/registration/register_page/register_page.dart'
    as _i1;
import '../features/pages/films/films_page/films_page.dart' as _i4;
import '../features/pages/home/home_page/home_page.dart' as _i3;
import '../features/pages/properties/properties_page/properties_page.dart'
    as _i5;
import '../features/pages/theatres/theatres_page/theatres_page.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i1.RegisterPage(key: args.key),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.AuthPage(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.HomePage(),
      );
    },
    FilmsRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.FilmsPage(),
      );
    },
    PropertiesRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i5.PropertiesPage(),
      );
    },
    TheatresRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.TheatresPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          RegisterRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
        ),
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i7.RouteConfig(
          FilmsRoute.name,
          path: '/films-page',
        ),
        _i7.RouteConfig(
          PropertiesRoute.name,
          path: '/properties-page',
        ),
        _i7.RouteConfig(
          TheatresRoute.name,
          path: '/theatres-page',
        ),
      ];
}

/// generated route for
/// [_i1.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({_i9.Key? key})
      : super(
          RegisterRoute.name,
          path: '/',
          args: RegisterRouteArgs(key: key),
        );

  static const String name = 'RegisterRoute';
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i7.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({_i9.Key? key})
      : super(
          AuthRoute.name,
          path: '/auth-page',
          args: AuthRouteArgs(key: key),
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.FilmsPage]
class FilmsRoute extends _i7.PageRouteInfo<void> {
  const FilmsRoute()
      : super(
          FilmsRoute.name,
          path: '/films-page',
        );

  static const String name = 'FilmsRoute';
}

/// generated route for
/// [_i5.PropertiesPage]
class PropertiesRoute extends _i7.PageRouteInfo<void> {
  const PropertiesRoute()
      : super(
          PropertiesRoute.name,
          path: '/properties-page',
        );

  static const String name = 'PropertiesRoute';
}

/// generated route for
/// [_i6.TheatresPage]
class TheatresRoute extends _i7.PageRouteInfo<void> {
  const TheatresRoute()
      : super(
          TheatresRoute.name,
          path: '/theatres-page',
        );

  static const String name = 'TheatresRoute';
}
