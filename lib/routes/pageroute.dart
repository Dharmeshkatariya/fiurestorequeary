import 'package:collectionoffirestore/bindings/cardscreen_binding.dart';
import 'package:collectionoffirestore/bindings/login_binding.dart';
import 'package:collectionoffirestore/bindings/mobileverification_binding.dart';
import 'package:collectionoffirestore/bindings/otpscreen_binding.dart';
import 'package:collectionoffirestore/bindings/signup_binding.dart';
import 'package:collectionoffirestore/screen/mobileverification.dart';
import 'package:collectionoffirestore/screen/otpscreen.dart';
import 'package:get/get.dart';

import '../screen/cardscreen.dart';
import '../screen/loginscreen.dart';
import '../screen/signuoscreen.dart';
import 'nameroute.dart';

class PageRoutes {
  static final pages = [
    GetPage(
        name: NameRoutes.logInScreen,
        page: () => LogInScreen(),
        binding: LogInScreenBinding()),
    GetPage(
        name: NameRoutes.signupScreen,
        page: () => SignUpScreen(),
        binding: SignUpScreenBinding()),
    GetPage(
      name: NameRoutes.cardscreen,
      page: () => CardScreen(),
      binding: CardScreenBinding()
    ),
    GetPage(
        name: NameRoutes.mobileVerificationScreen,
        page: () => MobileVerificationScreen(),
        binding: MobileVerificationScreenBinding()),
    GetPage(
        name: NameRoutes.otpScreen,
        page: () => OtpScreen(),
        binding: OtpScreenBinding()),
  ];
}
