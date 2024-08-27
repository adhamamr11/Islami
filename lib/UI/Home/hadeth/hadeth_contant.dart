import 'package:flutter/material.dart';
import 'package:islami/UI/Home/hadeth/hadeth_tab.dart';

import '../../default_screen.dart';

class HadethContant extends StatelessWidget {
  static const String routeName = "HadethContan";
  const HadethContant({super.key});

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return DefaultScreen(Scaffold(
      appBar: AppBar(
        title: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Card(
          elevation: 24,
          margin: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 100),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text(
                      hadeth.contant,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ));
    ;
  }
}
