import 'package:flutter/material.dart';
import 'package:islami/UI/Home/quran/surah_contant.dart';

class SurahTitle extends StatelessWidget {
  int index;
  String title;
  SurahTitle(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SurahContant.routeName,arguments: surahDetails(index, title));
      },
      child: Text(
          textAlign: TextAlign.center,
        title,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }
}
