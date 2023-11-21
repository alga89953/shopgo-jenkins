import 'package:firebase_auth/firebase_auth.dart';

void signIn() //async
{
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user != null) {
      // ignore: avoid_print
      print(user.uid);
    }
  });
}
