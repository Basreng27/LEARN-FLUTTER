import 'package:flutter/material.dart';
import 'package:komik_app/pages/home.dart';
import 'package:komik_app/pages/komik.dart';
import 'package:komik_app/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/komik': (context) => const KomikPage(),
      },
    );
  }
}
