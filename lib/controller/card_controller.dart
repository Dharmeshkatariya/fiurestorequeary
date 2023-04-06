import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../method/firestoremethod.dart';

class CardController extends GetxController {
  final cardNameController = TextEditingController();
  final cardColorController = TextEditingController();


  addCardDataFireStore() {
    FireStoreMethods().addData(cardNameController.text, cardColorController.text);
  }
  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }
}
