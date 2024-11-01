import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import untuk Firestore

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(labelText: 'Username'),
                ),
                const SizedBox(height: 20),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    // onPressed: () {
                    //   Navigator.pushReplacementNamed(context, '/home');
                    // },
                    onPressed: () async {
                      // Menginisialisasi Firebase (jika belum diinisialisasi)
                      await FirebaseFirestore.instance
                          .collection('users')
                          .get(); // Contoh penggunaan Firestore, bisa diganti sesuai kebutuhan

                      // Mendapatkan data dari Firestore
                      QuerySnapshot snapshot = await FirebaseFirestore.instance
                          .collection('account') //table
                          .get();

                      // Menampilkan data di konsol log
                      for (QueryDocumentSnapshot doc in snapshot.docs) {
                        print(
                            'ID: ${doc.id}, Name: ${doc['username']}, Age: ${doc['password']}');
                      }
                    },
                    child: const Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
