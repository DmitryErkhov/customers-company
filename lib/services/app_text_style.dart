import 'package:flutter/material.dart';

import 'app_color_style.dart';

class CustomTextStyle {


  static TextStyle titleW800S20Style = TextStyle(
      fontFamily: 'europeextendedc',
      color: CustomColorStyle.titleColor,
      fontSize: 20,
      fontWeight: FontWeight.w800
  );

  static TextStyle titleW900S16Style(Size screenSize){
    return TextStyle(
        fontFamily: 'europeextendedc',
        color: CustomColorStyle.titleColor,
        fontSize: screenSize.width > screenSize.height ? 16*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.04,
        fontWeight: FontWeight.w900
    );
  }

  static TextStyle titleW500S16Style(Size screenSize){
    return TextStyle(
        fontFamily: 'europeextendedc',
        color: CustomColorStyle.titleColor,
        fontSize: screenSize.width > screenSize.height ? 16*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.04,
        fontWeight: FontWeight.w500
    );
  }

  static TextStyle titleCarCard(Size screenSize){
    return TextStyle(
      fontFamily: 'Cornerita',
      color: CustomColorStyle.titleColor,
      fontSize: screenSize.width > screenSize.height ? 16*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.04,
      fontWeight: FontWeight.bold
    );
  }

  static TextStyle bodyCarCard(Size screenSize) {
    return TextStyle(
      fontFamily: 'Cornerita',
      color: CustomColorStyle.titleColor,
      fontSize: screenSize.width > screenSize.height ? 15*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.035,
      fontWeight: FontWeight.w200,

    );
  }

  static TextStyle titleGridCard(Size screenSize){
    return TextStyle(
      fontFamily: 'Cornerita',
      color: CustomColorStyle.titleColor,
      fontSize: screenSize.width > screenSize.height ? 15*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.035,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle titleMapCard(Size screenSize){
    return TextStyle(
      fontFamily: 'Cornerita',
      color: CustomColorStyle.titleColor,
      fontSize: screenSize.width > screenSize.height ? 16*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.04,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      backgroundColor: CustomColorStyle.backGroundWhite,
    );
  }

  static TextStyle bodyMapCard(Size screenSize) {
    return TextStyle(
      fontFamily: 'Cornerita',
      color: CustomColorStyle.titleColor,
      fontSize: screenSize.width > screenSize.height ? 15*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.035,
      fontWeight: FontWeight.w200,
      backgroundColor: CustomColorStyle.backGroundWhite,

    );
  }

  static TextStyle offerDetailCard(Size screenSize) {
    return TextStyle(
      fontFamily: 'Cornerita',
      color: CustomColorStyle.titleColor,
      fontSize: screenSize.width > screenSize.height ? 16*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.045,
      fontWeight: FontWeight.w600,
      backgroundColor: CustomColorStyle.backGroundWhite,

    );
  }

  static TextStyle authTextButton(Size screenSize) {
    return TextStyle(
      fontFamily: 'Cornerita',
      color: CustomColorStyle.titleColor,
      // color: CustomColorStyle.titleColor,
      fontSize: screenSize.width > screenSize.height ? 15*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.035,
      fontWeight: FontWeight.w200,
      backgroundColor: CustomColorStyle.backGroundWhite,

    );
  }

  static TextStyle titleAuthStyle(Size screenSize){
    return TextStyle(
        fontFamily: 'europeextendedc',
        color: CustomColorStyle.titleColor,
        fontSize: screenSize.width > screenSize.height ? 20*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.05,
        fontWeight: FontWeight.w900
    );
  }

  static const TextStyle floatingActionButtonStyle = TextStyle(
      color: Color(0xff2C3A42),
      fontFamily: "Inner",
      fontSize: 30,
      fontWeight: FontWeight.w500
  );

  static TextStyle hintStyle(Size screenSize) {
    return TextStyle(
      fontFamily: 'Cornerita',
      color: CustomColorStyle.titleColor,
      fontSize: screenSize.width > screenSize.height ? 15*(screenSize.width/screenSize.height-0.7) : screenSize.width*0.035,
      fontWeight: FontWeight.w400,
      backgroundColor: CustomColorStyle.backGroundWhite,

    );
  }

  static const TextStyle crossedOutStyle = TextStyle(
      color: Color(0xFFF3EFEF),
      fontFamily: "Inner",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.lineThrough,
      decorationThickness: 3
  );

}