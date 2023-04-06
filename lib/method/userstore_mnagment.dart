import 'package:cloud_firestore/cloud_firestore.dart';

class UserManagment {
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  storeNewUserFirestore(
      {required String uid,
      String? email,
      String? password,
      String? mobile,
      String? userName,
      String? description}) async {
    await fireStore.collection("users").doc(uid).set({
      "email": email,
      "password": password,
      "uid": uid,
      "mobile": mobile,
      "username": userName,
      "description": description,
    });
  }
}
