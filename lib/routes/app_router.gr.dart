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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i4;

import '../features/pages/auth/authorization/auth_page/auth_page.dart' as _i2;
import '../features/pages/auth/registration/register_page/register_page.dart'
    as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return _i3.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i1.RegisterPage(key: args.key),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i3.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.AuthPage(key: args.key),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          RegisterRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
        ),
      ];
}

/// generated route for
/// [_i1.RegisterPage]
class RegisterRoute extends _i3.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({_i5.Key? key})
      : super(
          RegisterRoute.name,
          path: '/',
          args: RegisterRouteArgs(key: key),
        );

  static const String name = 'RegisterRoute';
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i3.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({_i5.Key? key})
      : super(
          AuthRoute.name,
          path: '/auth-page',
          args: AuthRouteArgs(key: key),
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key}';
  }
}
