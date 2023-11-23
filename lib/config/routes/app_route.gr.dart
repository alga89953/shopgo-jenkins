// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i22;

import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;
import 'package:shopgo/src/maps/components/rider_info.dart' as _i13;
import 'package:shopgo/src/maps/maps_screen.dart' as _i1;
import 'package:shopgo/src/maps/order_traking_page.dart' as _i7;
import 'package:shopgo/src/privacy_page.dart' as _i8;
import 'package:shopgo/src/screens/404/screen_404_.dart' as _i15;
import 'package:shopgo/src/screens/auth/auth_pruebas.dart' as _i10;
import 'package:shopgo/src/screens/auth/login.dart' as _i5;
import 'package:shopgo/src/screens/auth/register.dart' as _i11;
import 'package:shopgo/src/screens/auth/resert_password.dart' as _i12;
import 'package:shopgo/src/screens/home/components/detail_populars_screen.dart'
    as _i2;
import 'package:shopgo/src/screens/home/components/form/form_screen.dart'
    as _i19;
import 'package:shopgo/src/screens/home/components/schedule_card.dart' as _i14;
import 'package:shopgo/src/screens/home/components/search_bar.dart' as _i16;
import 'package:shopgo/src/screens/home/components/service_detail_screen.dart'
    as _i17;
import 'package:shopgo/src/screens/home/home_biker/home_biker_screen.dart'
    as _i3;
import 'package:shopgo/src/screens/home/home_customer/home_customer_screen.dart'
    as _i4;
import 'package:shopgo/src/screens/onboarding/onboarding_screen_.dart' as _i6;
import 'package:shopgo/src/screens/splash/splash_screen_.dart' as _i18;
import 'package:shopgo/src/screens/users/profile_screen.dart' as _i9;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    AppMaps.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppMaps(),
      );
    },
    DetailPolularsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailPolularsRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
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
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeBikerScreen(),
      );
    },
    HomeCustomerRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeCustomerScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingScreen(),
      );
    },
    OrderTrackingRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OrderTrackingPage(),
      );
    },
    PrivacyRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PrivacyPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProfileScreen(),
      );
    },
    PruebasAuth.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PruebasAuth(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RegisterScreen(),
      );
    },
    ResetRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ResetPage(),
      );
    },
    RiderInfo.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RiderInfo(),
      );
    },
    ScheduleCard.name: (routeData) {
      final args = routeData.argsAs<ScheduleCardArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.ScheduleCard(
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
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.Screen404(),
      );
    },
    SearchBar_.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SearchBar_(),
      );
    },
    Shoes.name: (routeData) {
      final args = routeData.argsAs<ShoesArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.Shoes(
          key: args.key,
          image: args.image,
          tag: args.tag,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SplashScreen(),
      );
    },
    TextFormFieldRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.TextFormFieldScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppMaps]
class AppMaps extends _i20.PageRouteInfo<void> {
  const AppMaps({List<_i20.PageRouteInfo>? children})
      : super(
          AppMaps.name,
          initialChildren: children,
        );

  static const String name = 'AppMaps';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailPolularsScreen]
class DetailPolularsRoute extends _i20.PageRouteInfo<DetailPolularsRouteArgs> {
  DetailPolularsRoute({
    required String name,
    required String description,
    required String imageUrl,
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
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

  static const _i20.PageInfo<DetailPolularsRouteArgs> page =
      _i20.PageInfo<DetailPolularsRouteArgs>(name);
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

  final _i21.Key? key;

  @override
  String toString() {
    return 'DetailPolularsRouteArgs{name: $name, description: $description, imageUrl: $imageUrl, key: $key}';
  }
}

/// generated route for
/// [_i3.HomeBikerScreen]
class HomeBikerRoute extends _i20.PageRouteInfo<void> {
  const HomeBikerRoute({List<_i20.PageRouteInfo>? children})
      : super(
          HomeBikerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeBikerRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeCustomerScreen]
class HomeCustomerRoute extends _i20.PageRouteInfo<void> {
  const HomeCustomerRoute({List<_i20.PageRouteInfo>? children})
      : super(
          HomeCustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeCustomerRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingScreen]
class OnboardingRoute extends _i20.PageRouteInfo<void> {
  const OnboardingRoute({List<_i20.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OrderTrackingPage]
class OrderTrackingRoute extends _i20.PageRouteInfo<void> {
  const OrderTrackingRoute({List<_i20.PageRouteInfo>? children})
      : super(
          OrderTrackingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderTrackingRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PrivacyPage]
class PrivacyRoute extends _i20.PageRouteInfo<void> {
  const PrivacyRoute({List<_i20.PageRouteInfo>? children})
      : super(
          PrivacyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i20.PageRouteInfo<void> {
  const ProfileRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PruebasAuth]
class PruebasAuth extends _i20.PageRouteInfo<void> {
  const PruebasAuth({List<_i20.PageRouteInfo>? children})
      : super(
          PruebasAuth.name,
          initialChildren: children,
        );

  static const String name = 'PruebasAuth';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RegisterScreen]
class RegisterRoute extends _i20.PageRouteInfo<void> {
  const RegisterRoute({List<_i20.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ResetPage]
class ResetRoute extends _i20.PageRouteInfo<void> {
  const ResetRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ResetRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i13.RiderInfo]
class RiderInfo extends _i20.PageRouteInfo<void> {
  const RiderInfo({List<_i20.PageRouteInfo>? children})
      : super(
          RiderInfo.name,
          initialChildren: children,
        );

  static const String name = 'RiderInfo';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ScheduleCard]
class ScheduleCard extends _i20.PageRouteInfo<ScheduleCardArgs> {
  ScheduleCard({
    required String title,
    required String description,
    required String date,
    required String month,
    required _i22.Color bgColor,
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
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

  static const _i20.PageInfo<ScheduleCardArgs> page =
      _i20.PageInfo<ScheduleCardArgs>(name);
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

  final _i22.Color bgColor;

  final _i21.Key? key;

  @override
  String toString() {
    return 'ScheduleCardArgs{title: $title, description: $description, date: $date, month: $month, bgColor: $bgColor, key: $key}';
  }
}

/// generated route for
/// [_i15.Screen404]
class Route404 extends _i20.PageRouteInfo<void> {
  const Route404({List<_i20.PageRouteInfo>? children})
      : super(
          Route404.name,
          initialChildren: children,
        );

  static const String name = 'Route404';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SearchBar_]
class SearchBar_ extends _i20.PageRouteInfo<void> {
  const SearchBar_({List<_i20.PageRouteInfo>? children})
      : super(
          SearchBar_.name,
          initialChildren: children,
        );

  static const String name = 'SearchBar_';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.Shoes]
class Shoes extends _i20.PageRouteInfo<ShoesArgs> {
  Shoes({
    _i21.Key? key,
    required String image,
    required String tag,
    List<_i20.PageRouteInfo>? children,
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

  static const _i20.PageInfo<ShoesArgs> page = _i20.PageInfo<ShoesArgs>(name);
}

class ShoesArgs {
  const ShoesArgs({
    this.key,
    required this.image,
    required this.tag,
  });

  final _i21.Key? key;

  final String image;

  final String tag;

  @override
  String toString() {
    return 'ShoesArgs{key: $key, image: $image, tag: $tag}';
  }
}

/// generated route for
/// [_i18.SplashScreen]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.TextFormFieldScreen]
class TextFormFieldRoute extends _i20.PageRouteInfo<void> {
  const TextFormFieldRoute({List<_i20.PageRouteInfo>? children})
      : super(
          TextFormFieldRoute.name,
          initialChildren: children,
        );

  static const String name = 'TextFormFieldRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
