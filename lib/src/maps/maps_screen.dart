import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopgo/src/maps/order_traking_page.dart';

@RoutePage()
class AppMaps extends StatelessWidget {
  const AppMaps({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const OrderTrackingPage(),
    );
  }
}
