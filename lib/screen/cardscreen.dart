import 'package:collectionoffirestore/common.dart';
import 'package:collectionoffirestore/controller/card_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardScreen extends GetView<CardController> {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Add Card Data",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Common.textFiled(
                  text: "add card name",
                  controller: controller.cardNameController),
              const SizedBox(
                height: 20,
              ),
              Common.textFiled(
                  text: "add card color",
                  controller: controller.cardColorController),
              const SizedBox(
                height: 20,
              ),
              Common.button(
                  text: "Upload data",
                  color: Colors.blue.shade100,
                  onTap: () {
                    controller.addCardDataFireStore();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
