import 'package:flutter/material.dart';
import 'package:learn_app/home_page.dart';
import 'package:learn_app/login_page.dart';
// Importkan
import 'package:firebase_core/firebase_core.dart';
import 'package:learn_app/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      routes: {'/home': (context) => const HomePage()},
    );
  }
}
