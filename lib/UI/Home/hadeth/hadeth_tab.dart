import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/widgits/hadeth_title.dart';

import '../../ui_utils.dart';
import 'hadeth_tab.dart';
import 'hadeth_tab.dart';
import 'hadeth_tab.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> alAhadeth = [];
  @override
  void initState() {
    super.initState();
    readAhadeth();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(getImagePath("hadeth_logo.png")),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Text(appTranslation(context).ahadethTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,),
            ),
          ],),
        Divider(),
        Expanded(
          child: ListView.builder(
            itemCount: alAhadeth.length,
            itemBuilder: (context, index) {
              return HadethTitle(alAhadeth[index]);
            }, ),
        ),

      ],
    );
  }

  void readAhadeth()async{
    String ahadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = ahadeth.trim().split("#");
    for(int i=0;i<allHadeth.length;i++){
      String singleHadeth = allHadeth[i];
      List<String> lines = singleHadeth.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String contant = lines.join("\n");
      Hadeth h = Hadeth(title, contant);
      alAhadeth.add(h);
    }
    setState(() {

    });

  }

}

class Hadeth{
  String title;
  String contant;
  Hadeth(this.title, this.contant);
}