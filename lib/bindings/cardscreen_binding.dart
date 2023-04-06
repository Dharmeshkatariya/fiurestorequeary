import 'package:collectionoffirestore/controller/card_controller.dart';
import 'package:get/get.dart';

class CardScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CardController>(() => CardController());
    // TODO: implement dependencies
  }

}