// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipely/src/auth/screens/signup_screen.dart';
import 'package:recipely/src/auth/utils/color_utils.dart';
import 'package:recipely/src/auth/widgets/layouts_widgets.dart';
import 'package:recipely/src/pages/home_page.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                _logoWidget("assets/images/logo.png"),
                const SizedBox(height: 30.0),
                inputTextField("Ingrese el nombre de usuario",
                    Icons.person_outline, false, _emailTextController),
                const SizedBox(height: 30.0),
                inputTextField("Ingrese la contraseña", Icons.lock_outline,
                    true, _passwordTextController),
                const SizedBox(height: 30.0),
                signInUpButton(context, false, () {
                  //iniciar sesión
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }).onError((error, stackTrace) {
                    print("Error de Inicio de Sesión ${error.toString()}");
                  });
                }),
                singUpOption(context),
              ],
            ),
          ))),
    );
  }
}

Row singUpOption(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "¿No tienes una cuenta?",
        style: TextStyle(color: Colors.white70),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                  builder: (context) => const SignUpScreen()));
        },
        child: const Text(
          "Registrarte",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}

Image _logoWidget(String imagen) {
  return Image.asset(
    imagen,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}
