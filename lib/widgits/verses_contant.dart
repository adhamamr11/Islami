import 'package:flutter/material.dart';
import 'package:islami/UI/Home/quran/surah_contant.dart';

class VersesContant extends StatelessWidget {
  int index;
  String contant;
  VersesContant(this.contant,this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
        textAlign: TextAlign.center,
        '$contant {${index +1}}',
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.bodyMedium,
    );
  }

}
