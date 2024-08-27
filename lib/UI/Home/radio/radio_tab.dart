import 'package:flutter/material.dart';
import 'package:islami/UI/default_screen.dart';
import 'package:islami/UI/ui_utils.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(getImagePath("radio_image.png")),
        SizedBox(height: 20,),
        Text("اذاعة القران الكريم",style: Theme.of(context).textTheme.titleMedium,),
        SizedBox(height: 50,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.skip_previous,),
            Icon(Icons.play_arrow,size: 70,),
            Icon(Icons.skip_next)
          ],
        ),
    ],);
  }
}
