import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  EmptyViewScreen extends StatelessWidget{
  const  EmptyViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Center(
          child: Text("Emptyview"),

        ),
      ),
    );
  }
}
