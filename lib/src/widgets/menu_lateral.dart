// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

import '../auth/screens/signin_screen.dart';
import '../auth/utils/color_utils.dart';

Drawer menuLateral(context) {
  return Drawer(
      elevation: 0.0,
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: ListView(padding: EdgeInsets.zero, children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      hexStringToColor("CB2B93"),
                      hexStringToColor("5E61F4"),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.cover)),
                child: Container(
                    alignment: Alignment.center,
                    child:
                        const Text("RECIPELY", style: estiloTextoMenuLateral))),

            /*ListTile(
              leading: const Icon(Icons.help, color: colorIcons),
              title: const Text("Ayuda"),
              onTap: () {
                Navigator.pushNamed(context, "categoria");
              },
            ),*/
            const SizedBox(height: 440.0),
            ListTile(
              leading: const Icon(Icons.logout_outlined, color: colorIcons),
              title: const Text(
                "Cerrar Sesión",
                style: TextStyle(color: Colors.white60, fontSize: 17.0),
              ),
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
            ),
            ListTile(
                title: Row(children: [
              Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.blueGrey.shade300,
                size: 14.0,
              ),
              Text(
                "Versión 1.0",
                style:
                    TextStyle(fontSize: 10.0, color: Colors.blueGrey.shade300),
              ),
            ])),
          ])));
}
