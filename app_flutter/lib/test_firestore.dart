import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TestFireStore extends StatefulWidget {
  const TestFireStore({super.key});

  @override
  State<TestFireStore> createState() => _TestFireStoreState();
}

class _TestFireStoreState extends State<TestFireStore> {
  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder(
          stream: db.collection("account").snapshots(),
          builder: (context, snapshots) {
            if (snapshots.connectionState == ConnectionState.waiting) {
              //kondisi jika sedang loading data
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshots.hasError) {
              // jika error
              return const Center(
                child: Text("Error"),
              );
            }

            // Olah Data
            var _data = snapshots.data!.docs; //return berupa ListData
            // _data.map((e) => e.model_apa_saja)

            return ListView.builder(
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onLongPress: () {
                      //delete data ketika tekan lama
                      _data[index].reference.delete().then((value) =>
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "Data Di Hapus")))); // sama dengan data[id] index idnya
                    },
                    // title: Text(_data[index].data().toString()), // semua data
                    title:
                        Text(_data[index].data()['username']), // data tertentu
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final user = <String, dynamic>{
            "username": "username",
            "password": "password",
          };

          // db.collection("account").doc("id1").set(user).then(( doc) => print("asdasdasd")  //jika idnya ditentukan
          db.collection("account").add(user).then((DocumentReference doc) {
            //jika tanpa id
            print('DocumentSnapshot added with ID: ${doc.id}');
          }).catchError((error) {
            print('Error adding document: $error');
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
