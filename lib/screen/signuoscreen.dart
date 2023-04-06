import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common.dart';
import '../controller/signup_controller.dart';
import '../routes/nameroute.dart';

class SignUpScreen extends GetView<SignUpScreenController> {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Sign up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.red),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Username",
                    preicon: const Icon(Icons.person),
                    controller: controller.userNameController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Email",
                    preicon: const Icon(Icons.email_outlined),
                    controller: controller.emailController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Mobile",
                    preicon: const Icon(Icons.phone_android),
                    controller: controller.mobileController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Password",
                    preicon: const Icon(Icons.lock),
                    controller: controller.passController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Description",
                    preicon: const Icon(Icons.description),
                    controller: controller.descController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.button(
                    text: "SignUp",
                    onTap: () {
                      controller.signStoreUser();
                      Get.toNamed(NameRoutes.logInScreen);
                    },
                    color: Colors.blue.shade100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
