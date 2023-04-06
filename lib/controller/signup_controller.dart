import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../method/authmethod.dart';

class SignUpScreenController extends GetxController {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final userNameController = TextEditingController();
  final mobileController = TextEditingController();
  final descController = TextEditingController();

  signStoreUser() {
    AuthMethod().signUpUser(
        email: emailController.text,
        password: passController.text,
        mobile: mobileController.text,
        username: userNameController.text,
        desc: descController.text);
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    mobileController.dispose();
    userNameController.dispose();
    descController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
