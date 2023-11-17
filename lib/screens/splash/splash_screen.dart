import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:shopgo/screens/home/home_screen.dart';
import 'package:shopgo/screens/home/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Llama a la función que maneja la lógica de tu SplashScreen
    Timer(
      const Duration(
          seconds: 3), // Cambia el tiempo de duración según tus necesidades
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const OnboardingScreen(), // Página que se muestra después del SplashScreen
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      // Personaliza tu SplashScreen según tus necesidades
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Agrega tu logo o imagen aquí
            Image.asset(
              'assets/images/logo.png', // Cambia la ruta a tu imagen
              width: 100.0, // Ajusta el tamaño según tus necesidades
              height: 100.0,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Shop Go',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
