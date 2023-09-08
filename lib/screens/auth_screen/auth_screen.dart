import 'package:flutter/material.dart';

import '../../services/app_color_style.dart';
import '../../services/app_decoration_style.dart';
import '../../services/app_text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColorStyle.backGroundWhite,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.428,
                  color: CustomColorStyle.titleColor,
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.36, left: MediaQuery.of(context).size.width * 0.05, bottom: MediaQuery.of(context).size.height * 0.1),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height:
                MediaQuery.of(context).size.width >  MediaQuery.of(context).size.height
                    ? 15*(MediaQuery.of(context).size.width/MediaQuery.of(context).size.height-0.7) + 290 + 25*(MediaQuery.of(context).size.width/MediaQuery.of(context).size.height-0.7) + 2*10*(MediaQuery.of(context).size.width/MediaQuery.of(context).size.height-0.7)
                    : MediaQuery.of(context).size.width*0.09 + 290 + MediaQuery.of(context).size.width*0.05 + 2*15*(MediaQuery.of(context).size.width/MediaQuery.of(context).size.height-0.7),
                constraints: BoxConstraints(
                  minHeight: 200,
                ),
                decoration: CustomDecorationStyle.shadowWithRadiusRectangle,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Авторизация', style: CustomTextStyle.titleAuthStyle(MediaQuery.of(context).size), textAlign: TextAlign.center,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Container(
                        height: 50,
                        decoration: CustomDecorationStyle.shadowRectangle,
                        child: TextField(
                          style: CustomTextStyle.titleW900S16Style(MediaQuery.of(context).size),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.people_alt_outlined),
                            hintText: 'Логин',
                            hintStyle: CustomTextStyle.hintStyle(MediaQuery.of(context).size),
                            fillColor: CustomColorStyle.backGroundWhite,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: CustomDecorationStyle.shadowRectangle,
                      child: TextFormField(
                        style: CustomTextStyle.titleW900S16Style(MediaQuery.of(context).size),
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: 'Пароль',
                          hintStyle: CustomTextStyle.hintStyle(MediaQuery.of(context).size),
                          fillColor: CustomColorStyle.backGroundWhite,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(
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
                    SizedBox(
                      height: MediaQuery.of(context).size.width >  MediaQuery.of(context).size.height ? MediaQuery.of(context).size.width*0.035*(MediaQuery.of(context).size.width/MediaQuery.of(context).size.height-0.7) : MediaQuery.of(context).size.width*0.09,
                      child: TextButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(CustomColorStyle.titleColor),
                          overlayColor: MaterialStateProperty.all<Color>(CustomColorStyle.titleColor.withOpacity(0)),
                        ),
                        child: Text('Забыли пароль?', style: CustomTextStyle.authTextButton(MediaQuery.of(context).size),),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(CustomColorStyle.titleColor),
                        foregroundColor: MaterialStateProperty.all<Color>(CustomColorStyle.titleColor),
                        overlayColor: MaterialStateProperty.all<Color>(CustomColorStyle.backGroundWhite),
                      ),
                      child: Text('Войти',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width >  MediaQuery.of(context).size.height ? MediaQuery.of(context).size.width*0.035*(MediaQuery.of(context).size.width/MediaQuery.of(context).size.height-0.7) : MediaQuery.of(context).size.width*0.09,
                      child: TextButton(
                        onPressed: (){},

                        child: Text('Нет аккаунта? Тогда зарегистрируйтесь', style: CustomTextStyle.authTextButton(MediaQuery.of(context).size),),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
