import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStoreMethods {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

// check user log in

  bool isLogin() {
    if (FirebaseAuth.instance.currentUser != null) {
      return true;
    }
    return false;
  }

// add firestore data in current usr add data

  addData(String? cardname, String? cardcolor) async {
    if (isLogin()) {
      fireStore.collection("carddata").add({
        "cardname": cardname,
        "cardcolor": cardcolor,
      });
    }
  }

  // get data firestore in document
  getDataFirestore()async {
   var snapshot = await fireStore.collection("carddata").doc();
  }

  // getMarker() async {
  //   var snapshot = await FirebaseFirestore.instance.collection("carddata").doc("YlZHj3x69UYf1MS8w9aQZvLncMq2");
  //   DocumentSnapshot docSnap = await snapshot.get();
  //   var doc_id2 = docSnap.reference.snapshots();
  //   print(doc_id2);
  // }
}
