// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

import '../auth/screens/signin_screen.dart';

Drawer menuLateral(context) {
  return Drawer(
      elevation: 0.0,
      child: Container(
          color: colorBG,
          child: ListView(padding: EdgeInsets.zero, children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/receta_menu.png"),
                        fit: BoxFit.cover)),
                child: Container(
                    alignment: Alignment.center,
                    child:
                        const Text("RECIPELY", style: estiloTextoMenuLateral))),
            ListTile(
              leading: const Icon(Icons.fastfood, color: colorIcons),
              title: const Text("Categorias"),
              onTap: () {
                Navigator.pushNamed(context, "categoria");
              },
            ),
            ListTile(
              leading: const Icon(Icons.help, color: colorIcons),
              title: const Text("Ayuda"),
              onTap: () {
                Navigator.pushNamed(context, "categoria");
              },
            ),
            const SizedBox(height: 350.0),
            ListTile(
              leading:
                  const Icon(Icons.account_circle_outlined, color: colorIcons),
              title: const Text("USUARIO"),
              onTap: () {
                Navigator.pushNamed(context, "categoria");
              },
            ),
            const SizedBox(height: 20.0),
            ListTile(
              leading: const Icon(Icons.logout_outlined, color: colorIcons),
              title: const Text("Cerrar Sesión"),
              onTap: () {
                //cerrar sesion de firebase
                FirebaseAuth.instance.signOut().then((value) {
                  print("Salio correctamente");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                });
              },
            )
          ])));
}
