import 'package:flutter/material.dart';
import 'package:shopgo/googleMaps/order_traking_page.dart';
import 'package:shopgo/src/screens.dart';
//import 'package:shopgo/src/screens/auth/home.dart';
//import 'package:shopgo/src/screens/auth/register.dart';

class ShopGo extends StatelessWidget {
  const ShopGo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routes = {
      '/': (context) => const SplashScreen(),
      //HomeScreen(),
      '/form': (context) => const TextFormFieldScreen(),
      '/signUp': (context) => const SignUpPage(),
      '/auth': (context) => const AuthScreen(),
      //'/detail': (context) => const DetailPage(plantId: 4),
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
        //stextTheme:
        //GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const Screen404());
      },
    );
  }
}
