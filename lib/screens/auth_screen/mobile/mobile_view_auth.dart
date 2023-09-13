import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  final double textScaleFactor;

  String username = '';
  String password = '';

  MobileView({required this.textScaleFactor});

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {

  String username = '';
  String password = '';

  @override
  void didUpdateWidget(MobileView oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Передача данных с одного поля для ввода в другое при изменении размера окна
    if (oldWidget.textScaleFactor != widget.textScaleFactor) {
      setState(() {
        // Сохранение данных в состоянии виджета
        username = oldWidget.username;
        password = oldWidget.password;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) {
            setState(() {
              username = value;
            });
          },
          decoration: InputDecoration(
            labelText: 'Username',
          ),
        ),
        TextField(
          onChanged: (value) {
            setState(() {
              password = value;
            });
          },
          decoration: InputDecoration(
            labelText: 'Password',
          ),
        ),
        TextButton(
          onPressed: () {
            // Ваш код для обработки авторизации
          },
          child: Text('Login'),
        ),
      ],
    );
  }
}