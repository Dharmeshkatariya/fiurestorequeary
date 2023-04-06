import 'package:collectionoffirestore/controller/mobilescreen_controller.dart';
import 'package:get/get.dart';

class MobileVerificationScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MobileVerificationScreenController>(() => MobileVerificationScreenController());
    // TODO: implement dependencies
  }

}