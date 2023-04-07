import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadData extends StatelessWidget {
  ReadData({Key? key}) : super(key: key);
  final fireStore = FirebaseFirestore.instance.collection("carddata").doc("katariyadharmesh657").collection("payout history").snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Container(
        child: StreamBuilder(
            stream: fireStore,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.docs.isNotEmpty) {
                  print(snapshot.data);
                  print(snapshot.data!.docs);
                  print(snapshot.data!.docs);

                  return ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        // var  docData = snapshot.data!.docs[index].data();

                        // String name = snapshot.data!.docs.elementAt(index).get("int");
                        return Center(
                          child: Container(
                            child: Text(
                              "${snapshot.data!.docs[index]["add"]}",
                            ),
                          ),
                        );
                      });
                }
              } else {
                return Text("fr");
              }
              return Container();
            }),
      ),
    );
  }
}
