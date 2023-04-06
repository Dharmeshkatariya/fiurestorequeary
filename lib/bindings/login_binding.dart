import 'package:collectionoffirestore/controller/logincontroller.dart';
import 'package:get/get.dart';

class LogInScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
    // TODO: implement dependencies
  }
}
