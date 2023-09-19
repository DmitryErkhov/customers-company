import 'package:flutter/material.dart';
import 'package:user_company/services/app_text_style.dart';

import '../../../services/app_color_style.dart';

class MobileView extends StatefulWidget {

  final double textScaleFactor;
  final TextEditingController emailController;
  final Function(String) updateEmail;

  const MobileView({
    required this.textScaleFactor,
    required this.emailController,
    required this.updateEmail,
  });

  // final double textScaleFactor;
  // const MobileView({super.key, required this.textScaleFactor});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {

    double wid = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;

    Size textScale = MediaQuery.of(context).size * (MediaQuery.of(context).devicePixelRatio + MediaQuery.of(context).textScaleFactor + he/wid);

    double size = MediaQuery.of(context).devicePixelRatio;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/login.png', width: MediaQuery.of(context).size.width/1.5, height: MediaQuery.of(context).size.width/1.5,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Авторизация',
                textAlign: TextAlign.center,
                style: CustomTextStyle.titleAuthPage(textScale),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width/48),
              child: Container(
                width: MediaQuery.of(context).size.width/1.2,
                //height: 50,
                //decoration: CustomDecorationStyle.shadowRectangle,
                child: TextFormField(
                  controller: widget.emailController,
                  onChanged: (newValue) {
                    widget.updateEmail(newValue);
                  },
                  cursorColor: CustomColorStyle.accentColor,
                  style: CustomTextStyle.textInTextFieldAuthPage(textScale),
                  decoration: InputDecoration(
                    focusColor: CustomColorStyle.accentColor,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0), // Увеличение отступов по горизонтали
                      child: Icon(Icons.people_alt_outlined, color: CustomColorStyle.greyColor,),
                    ),
                    hintText: 'Email адрес',
                    hintStyle: CustomTextStyle.hintTextFieldAuthPage(textScale),
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
              width: MediaQuery.of(context).size.width/1.2,
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width/200),
              child: TextFormField(
                cursorColor: CustomColorStyle.accentColor,
                style: CustomTextStyle.textInTextFieldAuthPage(textScale),
                obscureText: _obscureText,
                decoration: InputDecoration(
                  focusColor: CustomColorStyle.accentColor,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0), // Увеличение отступов по горизонтали
                    child: Icon(Icons.password, color: CustomColorStyle.greyColor,),
                  ),
                  hintText: 'Пароль',
                  hintStyle: CustomTextStyle.hintTextFieldAuthPage(textScale),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/1.2)/ 4 ),
              child: TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(CustomColorStyle.titleColor),
                  overlayColor: MaterialStateProperty.all<Color>(CustomColorStyle.titleColor.withOpacity(0)),
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children:[
                      TextSpan(
                        text: 'Забыли пароль?',
                        style: CustomTextStyle.textButtonAuthPage(textScale, CustomColorStyle.textColor),
                      ),
                      TextSpan(
                        text: ' Тогда нажмите на этот текст для восстановления',
                        style: CustomTextStyle.textButtonAuthPage(textScale, CustomColorStyle.greyColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Container(
              width: MediaQuery.of(context).size.width/1.2,
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
                        child: Text('Войти', style: CustomTextStyle.outlinedButtonAuthPage(MediaQuery.of(context).size * (MediaQuery.of(context).devicePixelRatio + MediaQuery.of(context).textScaleFactor + he/wid))), // add your button text here
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
      ),
    );
  }
}
