import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopgo/src/app.dart';
import 'firebase_options.dart';
//import '.env';
//import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Stripe.publishableKey = stripePublishableKey;
  //await Stripe.instance.applySettings();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //await FirebaseAuth.instance.signInAnonymously();
  runApp(const ShopGo());
}
