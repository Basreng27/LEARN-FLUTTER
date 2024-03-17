import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini Adalah Text";

  // anonymouse method hanya digunakan sekli saja dan tidak di gunakan di lagi (1x untuk mempersingkat code)
  // (){ //jika ada arameter masukan saja parameternya
  //    setState(() {
  //     message = "Tombol Di Tekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              ElevatedButton(
                child: Text("Tekan"),
                onPressed: () {
                  setState(() {
                    message = "Tombol Di Tekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
