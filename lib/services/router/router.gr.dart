// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i11;
import 'package:prigorod/domain/ride/model.dart' as _i12;
import 'package:prigorod/presentation/home/page.dart' as _i1;
import 'package:prigorod/presentation/login/controller.dart' as _i10;
import 'package:prigorod/presentation/login/page.dart' as _i2;
import 'package:prigorod/presentation/postAd/page.dart' as _i3;
import 'package:prigorod/presentation/register/page.dart' as _i4;
import 'package:prigorod/presentation/search/page.dart' as _i5;
import 'package:prigorod/presentation/splash/page.dart' as _i6;
import 'package:prigorod/presentation/trip/page.dart' as _i7;
import 'package:prigorod/presentation/verification/page.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    PostAdRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PostAdPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.RegisterPage(
          args.type,
          args.phone,
          key: args.key,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SearchPage(
          args.from,
          args.to,
          key: args.key,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashPage(),
      );
    },
    TripRoute.name: (routeData) {
      final args = routeData.argsAs<TripRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.TripPage(
          args.trip,
          key: args.key,
        ),
      );
    },
    VerificationRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.VerificationPage(
          args.type,
          args.phone,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PostAdPage]
class PostAdRoute extends _i9.PageRouteInfo<void> {
  const PostAdRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PostAdRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostAdRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterRoute extends _i9.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    required _i10.UserType type,
    required String phone,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            type: type,
            phone: phone,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i9.PageInfo<RegisterRouteArgs> page =
      _i9.PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    required this.type,
    required this.phone,
    this.key,
  });

  final _i10.UserType type;

  final String phone;

  final _i11.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{type: $type, phone: $phone, key: $key}';
  }
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    required String from,
    required String to,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            from: from,
            to: to,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i9.PageInfo<SearchRouteArgs> page =
      _i9.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    required this.from,
    required this.to,
    this.key,
  });

  final String from;

  final String to;

  final _i11.Key? key;

  @override
  String toString() {
    return 'SearchRouteArgs{from: $from, to: $to, key: $key}';
  }
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.TripPage]
class TripRoute extends _i9.PageRouteInfo<TripRouteArgs> {
  TripRoute({
    required _i12.Trip trip,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          TripRoute.name,
          args: TripRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TripRoute';

  static const _i9.PageInfo<TripRouteArgs> page =
      _i9.PageInfo<TripRouteArgs>(name);
}

class TripRouteArgs {
  const TripRouteArgs({
    required this.trip,
    this.key,
  });

  final _i12.Trip trip;

  final _i11.Key? key;

  @override
  String toString() {
    return 'TripRouteArgs{trip: $trip, key: $key}';
  }
}

/// generated route for
/// [_i8.VerificationPage]
class VerificationRoute extends _i9.PageRouteInfo<VerificationRouteArgs> {
  VerificationRoute({
    required _i10.UserType type,
    required String phone,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          VerificationRoute.name,
          args: VerificationRouteArgs(
            type: type,
            phone: phone,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i9.PageInfo<VerificationRouteArgs> page =
      _i9.PageInfo<VerificationRouteArgs>(name);
}

class VerificationRouteArgs {
  const VerificationRouteArgs({
    required this.type,
    required this.phone,
    this.key,
  });

  final _i10.UserType type;

  final String phone;

  final _i11.Key? key;

  @override
  String toString() {
    return 'VerificationRouteArgs{type: $type, phone: $phone, key: $key}';
  }
}
