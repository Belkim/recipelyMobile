//para correr el programa sin el error del null safety flutter run --no-sound-null-safety
import 'package:flutter/material.dart';
//firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:recipely/src/auth/screens/signin_screen.dart';
//pages
import 'package:recipely/src/pages/categoria.dart';
import 'package:recipely/src/pages/detalle.dart';
//estilos
import 'package:recipely/src/styles/styles.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColorLight: colorTitle,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const SignInScreen(),
        'categoria': (BuildContext context) => const CategoriaPage(),
        'detalle': (BuildContext context) => const DetallePage(),
      },
    );
  }
}
