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
  // Membuat List
  List<Widget> widgets = [];
  int counter = 1;

  // mengisi widgets sebelum ditampilkan
  // constructor (code yg pasti akan dijalankan terlebihdahulu)
  // _MyAppState() {
  //   // Add to List
  //   for (int i = 0; i < 100; i++) {
  //     widgets.add(Text("Data " + i.toString()));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        // body: Column(children: widgets),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text("Data Ke-" + counter.toString()));
                        counter++;
                      });
                    },
                    child: Text("Tambah Data")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text("Kuranng Data")),
              ],
            ), // Untuk Memasang 2 buah button ke samping
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ), // agar jika data banyak bisa di scroll
      ),
    );
  }
}
