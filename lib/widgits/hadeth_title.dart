import 'package:flutter/material.dart';
import 'package:islami/UI/Home/hadeth/hadeth_contant.dart';
import 'package:islami/UI/Home/quran/surah_contant.dart';

import '../UI/Home/hadeth/hadeth_tab.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;
  HadethTitle(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethContant.routeName,arguments: hadeth);
      },
      child: Text(
        textAlign: TextAlign.center,
        hadeth.title,
        style: Theme.of(context).textTheme.titleSmall),
    );
  }

}
