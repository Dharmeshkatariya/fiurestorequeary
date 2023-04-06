import 'package:collectionoffirestore/common.dart';
import 'package:collectionoffirestore/controller/otpscreen_controller.dart';
import 'package:collectionoffirestore/method/authmethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../routes/nameroute.dart';

class OtpScreen extends GetView<OtpScreenController> {
  OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Otp verification"),
            const SizedBox(
              height: 40,
            ),
            Common.textFiled(
                text: "enter the otp", controller: controller.otpController),
            const SizedBox(
              height: 20,
            ),
            Common.button(
                text: "Verify otp ",
                color: Colors.red,
                onTap: () {
                  AuthMethod().verifyOTPCode(
                      verificationId: Common.verificationId,
                      otpcontroller: controller.otpController.text);
                  Get.toNamed(NameRoutes.cardscreen);
                }),
          ],
        ),
      ),
    );
  }
}
