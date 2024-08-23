import 'package:flutter/material.dart';
import 'package:islami/UI/default_screen.dart';

import '../../ui_utils.dart';

class SurahContant extends StatelessWidget {
  static const String routeName = "SurahContan";
  const SurahContant({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as surahDetails;
    return DefaultScreen(
        Scaffold(
      appBar: AppBar(title: Text(args.SurahTitle),),
          body: Card(
            elevation: 24,
          margin: EdgeInsets.only(top: 30,right: 20,left: 20,bottom: 100),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: ListView.builder(itemBuilder: (context, index) {
            Text("data");
          },
          itemCount: 114),
          ),
    ));
  }
}
class surahDetails{
  int SurahIndex;
  String SurahTitle;
  surahDetails(this.SurahIndex, this.SurahTitle);
}
