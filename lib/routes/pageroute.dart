import 'package:get/get.dart';

import '../screen/homescreen.dart';
import '../screen/loginscreen.dart';
import '../screen/signuoscreen.dart';
import 'nameroute.dart';

class PageRoutes{
  static final pages = [
    GetPage(
  name: NameRoutes.logInScreen,
  page: ()=>LogInScreen(),
  ),
    GetPage(
      name: NameRoutes.signupScreen,
      page: ()=>SignUpScreen(),
    ),
    GetPage(
      name: NameRoutes.homeScreen,
      page: ()=>HomeScreen(),
    ),
  ];
}