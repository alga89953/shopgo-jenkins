import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopgo/src/screens.dart';
//import 'package:shopgo/src/screens/home/home_usuario_screen.dart';

void route(context) {
  User? user = FirebaseAuth.instance.currentUser;
  // ignore: unused_local_variable
  var kk = FirebaseFirestore.instance
      .collection('users')
      .doc(user!.uid)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      if (documentSnapshot.get('rool') == "Motorista") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeMotoristaScreen(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeUsuarioScreen(),
          ),
        );
      }
    } else {
      // ignore: avoid_print
      print('Document does not exist on the database');
    }
  });
}
