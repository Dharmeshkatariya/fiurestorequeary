import 'package:collectionoffirestore/controller/otpscreen_controller.dart';
import 'package:get/get.dart';

class OtpScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpScreenController>(() => OtpScreenController());
    // TODO: implement dependencies
  }
}
