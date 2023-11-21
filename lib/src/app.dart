import 'package:flutter/material.dart';
import 'package:shopgo/config/routes/app_route.dart';
//import 'package:shopgo/src/googleMaps/order_traking_page.dart';
//import 'package:shopgo/src/screens.dart';
//import 'package:shopgo/src/screens/auth/login.dart';
//import '../config/routes/routes.dart';
//import 'package:shopgo/config/routes/app_routes.dart';

class ShopGo extends StatelessWidget {
  const ShopGo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*final routes = {
      //'/': (context) => const Home33(),
      '/splash': (context) => const SplashScreen(),
      '/login': (context) => const LoginPage(),
      '/shoes': (context) => const LoginPage(),
      '/form': (context) => const TextFormFieldScreen(),
      '/orderTrackingPage': (context) => const OrderTrackingPage(),
      '/googleMaps': (context) => const SplashScreen(),
      '/onBoardingScreen': (context) => const OnboardingScreen(),
      '/profile': (context) => const ProfileScreen(),
      '/add': (context) => const AddNamePage(),
      '/edit': (context) => const EditNamePage(),
    };*/
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );

    /*
    return MaterialApp(
      title: 'shopgo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        //stextTheme:
        //GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: Routes().routes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const Screen404());
      },
    );
    */
  }
}
