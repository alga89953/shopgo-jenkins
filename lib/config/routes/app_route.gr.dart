// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i20;

import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:shopgo/src/maps/components/rider_info.dart' as _i11;
import 'package:shopgo/src/maps/maps_screen.dart' as _i1;
import 'package:shopgo/src/maps/order_traking_page.dart' as _i7;
import 'package:shopgo/src/screens/404/screen_404_.dart' as _i13;
import 'package:shopgo/src/screens/auth/auth_pruebas.dart' as _i9;
import 'package:shopgo/src/screens/auth/login.dart' as _i5;
import 'package:shopgo/src/screens/auth/register.dart' as _i10;
import 'package:shopgo/src/screens/home/components/detail_populars_screen.dart'
    as _i2;
import 'package:shopgo/src/screens/home/components/form/form_screen.dart'
    as _i17;
import 'package:shopgo/src/screens/home/components/schedule_card.dart' as _i12;
import 'package:shopgo/src/screens/home/components/search_bar.dart' as _i14;
import 'package:shopgo/src/screens/home/components/service_detail_screen.dart'
    as _i15;
import 'package:shopgo/src/screens/home/home_biker/home_biker_screen.dart'
    as _i3;
import 'package:shopgo/src/screens/home/home_customer/home_customer_screen.dart'
    as _i4;
import 'package:shopgo/src/screens/onboarding/onboarding_screen_.dart' as _i6;
import 'package:shopgo/src/screens/splash/splash_screen_.dart' as _i16;
import 'package:shopgo/src/screens/users/profile_screen.dart' as _i8;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AppMaps.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppMaps(),
      );
    },
    DetailPolularsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailPolularsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailPolularsScreen(
          args.name,
          args.description,
          args.imageUrl,
          key: args.key,
        ),
      );
    },
    HomeBikerRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeBikerScreen(),
      );
    },
    HomeCustomerRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeCustomerScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingScreen(),
      );
    },
    OrderTrackingRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OrderTrackingPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
    PruebasAuth.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PruebasAuth(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RegisterScreen(),
      );
    },
    RiderInfo.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RiderInfo(),
      );
    },
    ScheduleCard.name: (routeData) {
      final args = routeData.argsAs<ScheduleCardArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ScheduleCard(
          args.title,
          args.description,
          args.date,
          args.month,
          args.bgColor,
          key: args.key,
        ),
      );
    },
    Route404.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.Screen404(),
      );
    },
    SearchBar_.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SearchBar_(),
      );
    },
    Shoes.name: (routeData) {
      final args = routeData.argsAs<ShoesArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.Shoes(
          key: args.key,
          image: args.image,
          tag: args.tag,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SplashScreen(),
      );
    },
    TextFormFieldRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.TextFormFieldScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppMaps]
class AppMaps extends _i18.PageRouteInfo<void> {
  const AppMaps({List<_i18.PageRouteInfo>? children})
      : super(
          AppMaps.name,
          initialChildren: children,
        );

  static const String name = 'AppMaps';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailPolularsScreen]
class DetailPolularsRoute extends _i18.PageRouteInfo<DetailPolularsRouteArgs> {
  DetailPolularsRoute({
    required String name,
    required String description,
    required String imageUrl,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          DetailPolularsRoute.name,
          args: DetailPolularsRouteArgs(
            name: name,
            description: description,
            imageUrl: imageUrl,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailPolularsRoute';

  static const _i18.PageInfo<DetailPolularsRouteArgs> page =
      _i18.PageInfo<DetailPolularsRouteArgs>(name);
}

class DetailPolularsRouteArgs {
  const DetailPolularsRouteArgs({
    required this.name,
    required this.description,
    required this.imageUrl,
    this.key,
  });

  final String name;

  final String description;

  final String imageUrl;

  final _i19.Key? key;

  @override
  String toString() {
    return 'DetailPolularsRouteArgs{name: $name, description: $description, imageUrl: $imageUrl, key: $key}';
  }
}

/// generated route for
/// [_i3.HomeBikerScreen]
class HomeBikerRoute extends _i18.PageRouteInfo<void> {
  const HomeBikerRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeBikerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeBikerRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeCustomerScreen]
class HomeCustomerRoute extends _i18.PageRouteInfo<void> {
  const HomeCustomerRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeCustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeCustomerRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingScreen]
class OnboardingRoute extends _i18.PageRouteInfo<void> {
  const OnboardingRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OrderTrackingPage]
class OrderTrackingRoute extends _i18.PageRouteInfo<void> {
  const OrderTrackingRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OrderTrackingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderTrackingRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PruebasAuth]
class PruebasAuth extends _i18.PageRouteInfo<void> {
  const PruebasAuth({List<_i18.PageRouteInfo>? children})
      : super(
          PruebasAuth.name,
          initialChildren: children,
        );

  static const String name = 'PruebasAuth';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RegisterScreen]
class RegisterRoute extends _i18.PageRouteInfo<void> {
  const RegisterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RiderInfo]
class RiderInfo extends _i18.PageRouteInfo<void> {
  const RiderInfo({List<_i18.PageRouteInfo>? children})
      : super(
          RiderInfo.name,
          initialChildren: children,
        );

  static const String name = 'RiderInfo';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ScheduleCard]
class ScheduleCard extends _i18.PageRouteInfo<ScheduleCardArgs> {
  ScheduleCard({
    required String title,
    required String description,
    required String date,
    required String month,
    required _i20.Color bgColor,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          ScheduleCard.name,
          args: ScheduleCardArgs(
            title: title,
            description: description,
            date: date,
            month: month,
            bgColor: bgColor,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ScheduleCard';

  static const _i18.PageInfo<ScheduleCardArgs> page =
      _i18.PageInfo<ScheduleCardArgs>(name);
}

class ScheduleCardArgs {
  const ScheduleCardArgs({
    required this.title,
    required this.description,
    required this.date,
    required this.month,
    required this.bgColor,
    this.key,
  });

  final String title;

  final String description;

  final String date;

  final String month;

  final _i20.Color bgColor;

  final _i19.Key? key;

  @override
  String toString() {
    return 'ScheduleCardArgs{title: $title, description: $description, date: $date, month: $month, bgColor: $bgColor, key: $key}';
  }
}

/// generated route for
/// [_i13.Screen404]
class Route404 extends _i18.PageRouteInfo<void> {
  const Route404({List<_i18.PageRouteInfo>? children})
      : super(
          Route404.name,
          initialChildren: children,
        );

  static const String name = 'Route404';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SearchBar_]
class SearchBar_ extends _i18.PageRouteInfo<void> {
  const SearchBar_({List<_i18.PageRouteInfo>? children})
      : super(
          SearchBar_.name,
          initialChildren: children,
        );

  static const String name = 'SearchBar_';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.Shoes]
class Shoes extends _i18.PageRouteInfo<ShoesArgs> {
  Shoes({
    _i19.Key? key,
    required String image,
    required String tag,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          Shoes.name,
          args: ShoesArgs(
            key: key,
            image: image,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'Shoes';

  static const _i18.PageInfo<ShoesArgs> page = _i18.PageInfo<ShoesArgs>(name);
}

class ShoesArgs {
  const ShoesArgs({
    this.key,
    required this.image,
    required this.tag,
  });

  final _i19.Key? key;

  final String image;

  final String tag;

  @override
  String toString() {
    return 'ShoesArgs{key: $key, image: $image, tag: $tag}';
  }
}

/// generated route for
/// [_i16.SplashScreen]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.TextFormFieldScreen]
class TextFormFieldRoute extends _i18.PageRouteInfo<void> {
  const TextFormFieldRoute({List<_i18.PageRouteInfo>? children})
      : super(
          TextFormFieldRoute.name,
          initialChildren: children,
        );

  static const String name = 'TextFormFieldRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}
