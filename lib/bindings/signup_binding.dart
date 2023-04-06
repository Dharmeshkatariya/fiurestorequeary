import 'package:collectionoffirestore/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignUpScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignUpScreenController>(() => SignUpScreenController());
    // TODO: implement dependencies
  }

}