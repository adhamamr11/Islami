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
        Navigator.pushNamed(context, SurahContant.routeName,arguments: surahDetails(title,index,));
      },
      child: Text(
          textAlign: TextAlign.center,
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }

}
