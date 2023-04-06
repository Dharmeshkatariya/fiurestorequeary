import 'package:collectionoffirestore/common.dart';
import 'package:collectionoffirestore/method/authmethod.dart';
import 'package:collectionoffirestore/routes/nameroute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileVerificationScreen extends StatelessWidget {
  MobileVerificationScreen({Key? key}) : super(key: key);
  final mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Mobile Authentication",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Common.textFiled(
                  text: "Enter mobile number", controller: mobileController),
              const SizedBox(
                height: 8,
              ),
              Common.button(
                  text: "Verify Mobile",
                  color: Colors.blue.shade100,
                  onTap: () {
                    AuthMethod().mobileVerifySignIn(
                        mobilecontroller: mobileController.text);

                  }),
            ],
          ),
        ),
      ),
    );
  }
}
