
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String getImagePath(String imagePath) {
  return "assets/images/$imagePath";
}

AppLocalizations appTranslation(BuildContext context){
  return AppLocalizations.of(context)!;
}