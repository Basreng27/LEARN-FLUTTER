import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// 1. Stateful Widget
class _MyAppState extends State<MyApp> {
  // variable untuk menampung nilai
  int number = 0;

  // method yang tidak mengembalikan nilai apapun depannya void
  void tekanTombol() {
    // fungsi untuk merefresh halamannya
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Learn DEMO"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              ElevatedButton(
                child: Text("Tambah Bilangan"),
                onPressed:
                    tekanTombol, // ketika tombol di tekan maka akan menjalankan method
              ) // yang asalnya RaisedButton
            ],
          ),
        ),
      ),
    );
  }
}
