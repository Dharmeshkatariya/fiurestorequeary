import 'package:collectionoffirestore/routes/pageroute.dart';
import 'package:collectionoffirestore/screen/cardscreen.dart';
import 'package:collectionoffirestore/screen/loginscreen.dart';
import 'package:collectionoffirestore/screen/signuoscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: PageRoutes.pages,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  LogInScreen());
  }
}
