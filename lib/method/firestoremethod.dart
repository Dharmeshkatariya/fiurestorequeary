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
  getDataFirestore() async {
    var snapshot = await fireStore.collection("carddata").doc();
  }

// getMarker() async {
//   var snapshot = await FirebaseFirestore.instance.collection("carddata").doc("YlZHj3x69UYf1MS8w9aQZvLncMq2");
//   DocumentSnapshot docSnap = await snapshot.get();
//   var doc_id2 = docSnap.reference.snapshots();
//   print(doc_id2);
// }

//   getUserFirestoreData({required String email, String? username}) async{
//    var snapshot = await fireStore.collection("users").where("email", isEqualTo: email).where("username", isEqualTo: username).orderBy("time", descending: true).get();
// if(snapshot.docs.isNotEmpty){
//   var docs  = snapshot.docs[0].data;
// return docs;
// }
//
//   }

// sub collection in firebase

// var result = FirebaseFirestore.instance.collection('user').doc("20").collection("msglist").get();
// collection add

  collection() {
    fireStore.collection("uupdate").add({
      "userid": "userid",
    }).then((value) {
      print(value);
    });
  }

  // collection delete document firestore
delete()async{
  await   fireStore.doc("id").delete();
}

// random id add document fireso=tore
randomDocAdd(){
    fireStore.collection("user").add({
      "user": "user"
    }).then((value) {
      print(value);
    });
}

// add document specific id like emaail address , add doc id specific id
emailAddData(){
    fireStore.collection("users").doc("katariyadharmesh658").set({}).then((value) {

    });
}

// delete doc by id
deleteDocById(){
    fireStore.collection("users").doc("katariyadharmesh658").delete().then((value) {});
}
// insert dynamic data key pair value
  dynamicAddData(){
    fireStore.collection("users").doc("katariyadharmesh658").set({
      "bool" : true,
      "string 0 " : "string",
      "map ": {
        "ram" : true,
      },
      "lis": [],
      "int ": 200,
    }).then((value) {

    });
}
}
