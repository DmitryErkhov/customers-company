import 'package:flutter/material.dart';
import 'package:user_company/screens/auth_screen/auth_screen.dart';
import 'package:user_company/screens/splash_screen/splash_screen.dart';
import 'package:user_company/services/app_color_style.dart';

import 'screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: CustomColorStyle.accentColor,
        indicatorColor: CustomColorStyle.accentColor,
        //colorScheme: ColorScheme.fromSeed(seedColor: CustomColorStyle.accentColor, primary: CustomColorStyle.accentColor),
        fontFamily: 'Evolventa',
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/login' : (context) => const LoginScreen(),
        '/home' : (context) => const HomeScreen(),
      },
    );
  }
}