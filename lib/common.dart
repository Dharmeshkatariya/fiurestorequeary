import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Common {
  static  String verificationId= "";
  static Widget button(
      {required String text, GestureTapCallback? onTap, Color? color}) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(13),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Text(text),
        ));
  }

  static Widget textFiled(
      {String? text, TextEditingController? controller, Widget? preicon}) {
    return TextFormField(
      controller: controller,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
      ],
      decoration: InputDecoration(
        prefixIcon: preicon,
        hintText: text,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
