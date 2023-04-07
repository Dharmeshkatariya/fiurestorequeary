import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../method/authmethod.dart';

class SignUpScreenController extends GetxController with StateMixin<dynamic>{
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final userNameController = TextEditingController();
  final mobileController = TextEditingController();
  final descController = TextEditingController();
  var result ;
  signStoreUser() {
    change(result,status: RxStatus.loading());
     result =AuthMethod().signUpUser(
        email: emailController.text,
        password: passController.text,
        mobile: mobileController.text,
        username: userNameController.text,
        desc: descController.text);
    result == null ?   change(result,status: RxStatus.empty()) : change(result,status: RxStatus.success());
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
