import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common.dart';
import '../controller/signup_controller.dart';
import '../routes/nameroute.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final _controller = Get.put(SignUpScreenController());

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
                    controller: _controller.userNameController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Email",
                    preicon: const Icon(Icons.email_outlined),
                    controller: _controller.emailController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Mobile",
                    preicon: const Icon(Icons.phone_android),
                    controller: _controller.mobileController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Password",
                    preicon: const Icon(Icons.lock),
                    controller: _controller.passController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.textFiled(
                    text: "Description",
                    preicon: const Icon(Icons.description),
                    controller: _controller.descController),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Common.button(
                    text: "SignUp",
                    onTap: () {
                      _controller.signStoreUser();
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
