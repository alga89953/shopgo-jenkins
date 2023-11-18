import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

import '../../../../global/common/toast.dart';

class HomeAuth2 extends StatefulWidget {
  const HomeAuth2({super.key});

  @override
  State<HomeAuth2> createState() => _HomeAuth2State();
}

class _HomeAuth2State extends State<HomeAuth2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Es el encabezado
          automaticallyImplyLeading: false,
          title: const Text("HomePage"),
          backgroundColor: const Color.fromARGB(255, 28, 75, 30),
        ),
        backgroundColor: const Color.fromARGB(255, 28, 75, 30),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              "Bienvenido a ShopGo!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            )),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushNamed(context, "/login");
                showToast(message: "Successfully signed out");
              },
              child: Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
