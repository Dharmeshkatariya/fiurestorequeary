import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../method/authmethod.dart';

class LoginScreenController extends GetxController {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  loginUser() {
    AuthMethod().loginUser(email: emailController.text, password: passController.text);
  }
}
