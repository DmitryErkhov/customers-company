import 'package:flutter/material.dart';
import 'package:user_company/services/app_text_style.dart';

import '../../../services/app_color_style.dart';

class DesktopView extends StatefulWidget {
  final double textScaleFactor;

  const DesktopView({Key? key, required this.textScaleFactor}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/3.15,
                  child: Text(
                    'Авторизация',
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.titleAuthPage(MediaQuery.of(context).size),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width/48),
                  child: Container(
                    width: MediaQuery.of(context).size.width/3.15,
                    //height: 50,
                    //decoration: CustomDecorationStyle.shadowRectangle,
                    child: TextField(
                      cursorColor: CustomColorStyle.accentColor,
                      style: CustomTextStyle.textInTextFieldAuthPage(MediaQuery.of(context).size),
                      decoration: InputDecoration(
                        focusColor: CustomColorStyle.accentColor,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0), // Увеличение отступов по горизонтали
                          child: Icon(Icons.people_alt_outlined, color: CustomColorStyle.greyColor,),
                        ),
                        hintText: 'Email адрес',
                        hintStyle: CustomTextStyle.hintTextFieldAuthPage(MediaQuery.of(context).size),
                        fillColor: CustomColorStyle.backGroundWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: CustomColorStyle.greyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: CustomColorStyle.accentColor,),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3.15,
                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width/200),
                  child: TextFormField(
                    cursorColor: CustomColorStyle.accentColor,
                    style: CustomTextStyle.textInTextFieldAuthPage(MediaQuery.of(context).size),
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      focusColor: CustomColorStyle.accentColor,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0), // Увеличение отступов по горизонтали
                        child: Icon(Icons.password, color: CustomColorStyle.greyColor,),
                      ),
                      hintText: 'Пароль',
                      hintStyle: CustomTextStyle.hintTextFieldAuthPage(MediaQuery.of(context).size),
                      fillColor: CustomColorStyle.backGroundWhite,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: CustomColorStyle.greyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: CustomColorStyle.accentColor,),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText ? Icons.visibility : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(CustomColorStyle.titleColor),
                    overlayColor: MaterialStateProperty.all<Color>(CustomColorStyle.titleColor.withOpacity(0)),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children:[
                        TextSpan(
                          text: 'Забыли пароль?',
                          style: CustomTextStyle.textButtonAuthPage(MediaQuery.of(context).size, CustomColorStyle.textColor),
                        ),
                        TextSpan(
                          text: ' Тогда нажмите на этот текст для восстановления',
                          style: CustomTextStyle.textButtonAuthPage(MediaQuery.of(context).size, CustomColorStyle.greyColor),
                        ),
                      ],
                    ),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width/3.15,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.width/48),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        textStyle: CustomTextStyle.textInTextFieldAuthPage(MediaQuery.of(context).size),
                      side: BorderSide(
                        color: CustomColorStyle.accentColor, //Set border color
                        width: 1, //Set border width
                      ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                    ),
                    onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text('Войти', style: CustomTextStyle.outlinedButtonAuthPage(MediaQuery.of(context).size),), // add your button text here
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.touch_app_outlined, color: CustomColorStyle.accentColor, size: 24,), // add your suffix icon here
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/login.png', width: MediaQuery.of(context).size.width/3.15, height: MediaQuery.of(context).size.width/3.15,)
          ],
        ),
      ),
    );
  }
}