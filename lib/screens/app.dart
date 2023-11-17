import 'package:flutter/material.dart';
import 'package:shopgo/googleMaps/order_traking_page.dart';
import 'package:shopgo/screens/home/screens/home_screen.dart';
import 'package:shopgo/screens/profile/profile_screen.dart';
import 'package:shopgo/screens/screens.dart';
import 'package:shopgo/screens/home/screens/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopgo/screens/home/detail_page.dart';

class ShopGo extends StatelessWidget {
  const ShopGo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routes = {
      '/': (context) => const HomeScreen(),
      '/detail': (context) => const DetailPage(plantId: 0),
      '/orderTrackingPage': (context) => const OrderTrackingPage(),
      '/googleMaps': (context) => const SplashScreen(),
      '/onBoardingScreen': (context) => const OnboardingScreen(),
      '/profile': (context) => const ProfileScreen(),
      '/add': (context) => const AddNamePage(),
      '/edit': (context) => const EditNamePage(),
    };

    return MaterialApp(
      title: 'shopgo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        textTheme:
            GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const Screen404());
      },
    );
  }
}
