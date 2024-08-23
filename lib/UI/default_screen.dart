import 'package:flutter/material.dart';
import 'package:islami/UI/ui_utils.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;
 DefaultScreen(this.body,{super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
    Image.asset(getImagePath("default_bg.png"),
  fit: BoxFit.cover,
  height: double.infinity,),
  body
    ],
    );
  }
}
