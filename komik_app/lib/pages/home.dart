import 'package:flutter/material.dart';
import 'package:komik_app/pages/widgets/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const Sidebar(),
      body: ListView(children: [
        // Center(
        //   // child: Text("INI ADALAH HOME"),
        //   child: Column(
        //     children: [
        //       ElevatedButton(
        //         onPressed: () {
        //           Navigator.pushReplacementNamed(context, '/komik');
        //         },
        //         child: const Text("Komik"),
        //       )
        //     ],
        //   ),
        // ),
      ]),
    );
  }
}
