import 'package:collectionoffirestore/method/authmethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common.dart';
import '../controller/logincontroller.dart';
import '../routes/nameroute.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  final _controller = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: Colors.red),
            ),
            const SizedBox(
              height: 20,
            ),
            Common.textFiled(
                text: "Email",
                preicon: const Icon(Icons.email_outlined),
                controller: _controller.emailController),
            const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            Common.textFiled(
                text: "Password",
                preicon: const Icon(Icons.lock),
                controller: _controller.passController),
            Common.button(
                text: "Login",
                color: Colors.blue.shade100,
                onTap: () {
                  _controller.loginUser();
                  Get.toNamed(NameRoutes.cardscreen);
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _rowImage(
                    image: "assets/icon/g.png",
                    onTap: () {
                      AuthMethod().googleSignInUser();
                    }),
                _rowImage(
                    image: "assets/icon/p.jpg",
                    onTap: () {
                      Get.toNamed(NameRoutes.mobileVerificationScreen);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _rowImage({required String image, GestureTapCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Image.asset(
          image,
          height: 50,
        ),
      ),
    );
  }
}
