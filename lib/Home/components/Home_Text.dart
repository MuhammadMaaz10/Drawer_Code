
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;

  CustomText({
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 18,
          color: Colors.black),);
  }
}
