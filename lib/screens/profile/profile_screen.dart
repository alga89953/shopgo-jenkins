import 'package:flutter/material.dart';

import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "Mi cuenta",
              icon: "assets/icons/userIcon.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Notificaciones",
              icon: "assets/icons/bell.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Configuración",
              icon: "assets/icons/settings.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Ayuda",
              icon: "assets/icons/questionMark.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Salir",
              icon: "assets/icons/logOut.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
