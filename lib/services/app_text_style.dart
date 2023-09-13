import 'package:flutter/material.dart';

import 'app_color_style.dart';

class CustomTextStyle {


  // Текстовые стили авторизации, регистрации и восстановления пароля

  static TextStyle titleAuthPage(Size screenSize){
    return TextStyle(
      fontFamily: 'Evolventa',
      color: CustomColorStyle.titleColor,
      fontSize: screenSize.width/60,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle hintTextFieldAuthPage(Size screenSize){
    return TextStyle(
      fontFamily: 'Evolventa',
      color: CustomColorStyle.greyColor,
      fontSize: screenSize.width/120,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textInTextFieldAuthPage(Size screenSize){
    return TextStyle(
      fontFamily: 'Evolventa',
      color: CustomColorStyle.textColor,
      fontSize: screenSize.width/120,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textButtonAuthPage(Size screenSize, Color colorText){
    return TextStyle(
      fontFamily: 'Tilda',
      color: colorText,
      fontSize: screenSize.width/120 - 1,
      fontWeight: FontWeight.w100,
    );
  }

  static TextStyle outlinedButtonAuthPage(Size screenSize){
    return TextStyle(
      fontFamily: 'Tilda',
      color: CustomColorStyle.textColor,
      fontSize: screenSize.width/96,
      fontWeight: FontWeight.w100,
    );
  }

  // Универсальные стили - Заголовки



  // Универсальные стили - Текстовое содержание

}