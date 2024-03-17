import 'package:flutter/material.dart';

// old
// void main() => runApp(MyApp());
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Belajar"), // title
          // Text() = untuk menampilkan data
        ), // judul
        // widget dengan nama AppBar
        // body: Text("Hello World"), //body //top left
        // body: Center(child: Text("Hello World")), //body //center
        // 1. Text Widget ===================================
        // body: Center(
        //     child: Container(
        //         color: Colors.lightBlue,
        //         width: 150,
        //         height: 50,
        //         child: Text(
        //           "Hello World",
        //           maxLines:
        //               2, // maxLines = membuat tulisan maksimal 2 baris saja mau sepanjang apapun
        //           overflow: TextOverflow
        //               .ellipsis, // overflow = apa yang akan dilakuakn ketika textnya terpotong
        //           // .ellipsis = menjadi ... kalau lebih
        //           // .clip = benar di pangkas
        //           softWrap:
        //               false, // softWrap = defaultnya true, jika false maka text akan menyesuaikan dengan koknten
        //           textAlign:
        //               TextAlign.center, // textAlign = mengatur tata letak text
        //           style: TextStyle(
        //               color: Colors.white,
        //               fontStyle: FontStyle.italic,
        //               fontWeight: FontWeight.bold,
        //               fontSize:
        //                   20), // style = mengatur gaya dari font. dan bisa menambahkan beberapa style lainnya
        //         ))), //body //center
        // 2. Row And Column ===================================
        // body: Column(
        //   // Column = menyusun widget kebawah / vertical
        //   // body: Row(
        //   //   // Row = menyusun widget kekanan / horizontal
        //   mainAxisAlignment:
        //       MainAxisAlignment.center, // membuat tulisan di tengah
        //   children: <Widget>[
        //     Text("Text 1"),
        //     Text("Text 2"),
        //     Row(
        //       //untuk membuat menjadi dibawahnya ada row
        //       children: <Widget>[Text("Text 3"), Text("Text 4")],
        //     )
        //   ],
        // ),
        // 3. Container Widget ===================================
        // body: Container(
        //   color: Colors.red,
        //   margin: EdgeInsets.all(10), // margin untuk garis pinggirannya
        //   // margin: EdgeInsets.fromLTRB(left, top, right, bottom), // margin untuk garis pinggirannya berbeda
        //   // margin: EdgeInsets.only(bottom: 10, top: 10), // margin untuk garis pinggirannya haja tertentu
        //   padding: EdgeInsets.all(10), // jarak dalam untuk garis pinggirannya
        //   child: Container(
        //     // color: Colors.blue,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20),
        //         // color: Colors.black,
        //         gradient: LinearGradient(
        //             begin: Alignment.topLeft,
        //             end: Alignment.bottomRight,
        //             colors: [
        //               //membuat warna transform dri amber ke biru
        //               Colors.amber,
        //               Colors.blue
        //             ])), // menambahakan berbagai dekorasi
        //   ),
        // ),
      ), //tampilan awal yg akan ditampilkan
      // Scaffold() = tampilan dasar dari aplikasi android
    );
  }
}

// new (bawaan)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
