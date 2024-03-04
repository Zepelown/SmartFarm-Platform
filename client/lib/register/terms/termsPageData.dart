import 'package:flutter/material.dart';

class TermsPage {

  late final double titleFontSize ;
  late final double titleTermsOfUseFontSize ;
  late final double subtitleTermsOfUseFontSize ;

  late final TextStyle titleTermsOfUseTextStyle;
  late final TextStyle subtitleTermsOfUseTextStyle;


  TermsPage(){
    titleFontSize = 18.0;
    titleTermsOfUseFontSize = 17.0;
    subtitleTermsOfUseFontSize = 14.0;

    titleTermsOfUseTextStyle = TextStyle(fontSize: titleTermsOfUseFontSize);
    subtitleTermsOfUseTextStyle = TextStyle(fontSize: subtitleTermsOfUseFontSize);
  }
}
