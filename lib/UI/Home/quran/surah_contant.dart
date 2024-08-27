import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/UI/app_theme/theme.dart';
import 'package:islami/UI/default_screen.dart';
import 'package:islami/widgits/verses_contant.dart';

import '../../ui_utils.dart';

class SurahContant extends StatefulWidget {
  static const String routeName = "SurahContan";
  const SurahContant({super.key});

  @override
  State<SurahContant> createState() => _SurahContantState();
}

class _SurahContantState extends State<SurahContant> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as surahDetails;

    if(verses.isEmpty){
      readSurahDetails(args.SurahIndex);
    }

    return DefaultScreen(
        Scaffold(
      appBar: AppBar(
        title: Text(args.SurahTitle,style: Theme.of(context).textTheme.titleLarge,),
      ),
      body: Card(
        elevation: 24,
        margin: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 100),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: verses.isNotEmpty
            ? ListView.separated(
                itemBuilder: (context, index) {
                  return (VersesContant(verses[index],index));
                },
                itemCount: verses.length,
          separatorBuilder: (context, index) => Divider(thickness: 1,))
            : Center(
                child:
                    CircularProgressIndicator(color: AppTheme.lightThemeColor)),
      ),
    ));
  }

  void readSurahDetails(int surahIndex) async {
    String surahContant =
        await rootBundle.loadString("assets/files/${surahIndex + 1}.txt");
    List<String> lines = surahContant.trim().split("\n");
    setState(() {
      verses = lines;
    });
  }

}

class surahDetails {
  int SurahIndex;
  String SurahTitle;
  surahDetails(this.SurahTitle, this.SurahIndex);
}

