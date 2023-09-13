import 'package:flutter/material.dart';
import 'package:user_company/screens/auth_screen/tablet/tablet_view_auth.dart';

import '../../services/app_color_style.dart';
import '../../services/app_decoration_style.dart';
import '../../services/app_text_style.dart';
import 'desktop/desktop_view_auth.dart';
import 'mobile/mobile_view_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColorStyle.backGroundWhite,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final mediaQuery = MediaQuery.of(context);
          final textScaleFactor = mediaQuery.textScaleFactor;
          final orientation = mediaQuery.orientation;

          if (orientation == Orientation.landscape &&
              mediaQuery.size.shortestSide < 600) {
            return MobileView(textScaleFactor: textScaleFactor);
          } else if (mediaQuery.size.width >= 1200) {
            return DesktopView(textScaleFactor: textScaleFactor);
          } else if (mediaQuery.size.width >= 600) {
            return TabletView(textScaleFactor: textScaleFactor);
          } else {
            return MobileView(textScaleFactor: textScaleFactor);
          }
        },
      ),
    );
  }
}




