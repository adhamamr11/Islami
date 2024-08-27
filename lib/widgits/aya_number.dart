import 'package:flutter/material.dart';
import 'package:islami/UI/Home/quran/surah_contant.dart';

class AyatNumber extends StatelessWidget {
  int index;
  String title;
  AyatNumber(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
        textAlign: TextAlign.center,
        title,
        style: Theme.of(context).textTheme.titleSmall,
    );
  }

}
