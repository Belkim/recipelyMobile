import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

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
                    child: Text("RECIPELY", style: estiloTextoMenuLateral))),
            ListTile(
              leading: Icon(Icons.fastfood, color: colorIcons),
              title: const Text("Categorias"),
              onTap: () {
                Navigator.pushNamed(context, "categoria");
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: colorIcons),
              title: const Text("Ayuda"),
              onTap: () {
                Navigator.pushNamed(context, "categoria");
              },
            ),
            const SizedBox(height: 435.0),
            ListTile(
              leading: Icon(Icons.account_circle_outlined, color: colorIcons),
              title: const Text("USUARIO"),
              onTap: () {
                Navigator.pushNamed(context, "categoria");
              },
            ),
          ])));
}
