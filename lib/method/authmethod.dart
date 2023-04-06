
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collectionoffirestore/method/userstore_mnagment.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethod {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  //signup user new account

  signUpUser({
    required String email,
    required String mobile,
    required String username,
    required String password,
    String? desc,
  }) async {
    String res = "some error";
    try {
      if (email.isNotEmpty &&
          password.isNotEmpty &&
          mobile.isNotEmpty &&
          username.isNotEmpty) {
        // register user
        UserCredential cred = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print(cred.user!.uid);
        UserManagment().storeNewUserFirestore(
            uid: cred.user!.uid,
            email: email,
            password: password,
            mobile: mobile,
            userName: username,
            description: desc);
      }
    } catch (e) {
      res = e.toString();
      Get.snackbar("user", res);
    }
    return res;
  }

  // log in user signin user

  loginUser({required String email, required String password}) async {
    var res = " ";
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await auth.signInWithEmailAndPassword(email: email, password: password);
        res = "success";
        Get.snackbar("user", res);
      } else {
        res = "please enter all field";
      }
    } catch (e) {
      res = e.toString();
      Get.snackbar("user", res);
    }
  }

//google sign in
  GoogleSignIn googleSignIn = GoogleSignIn();

  googleSignInUser() async {
    try {
      var result = await googleSignIn.signIn();
      if (result == null) {}
      final userdata = await result!.authentication;
      final credential = GoogleAuthProvider.credential(
          idToken: userdata.idToken, accessToken: userdata.accessToken);
      var finalResult = await auth.signInWithCredential(credential);
      print("Result $result");
      print(result.displayName);
      print(result.email);
      print("userdata $userdata");
      print("finalResult $finalResult");
      print("credential $credential");
    } catch (e) {
      print(e);
    }
  }


  // log out google log out
   googleSignOut()async{
    await googleSignIn.disconnect();
    auth.signOut();
   }
// sign out user

  signOutUser() async {
    var res = " ";
    try {
      auth.signOut().then((value) => value);
    } catch (e) {
      res = e.toString();
    }
  }
}
