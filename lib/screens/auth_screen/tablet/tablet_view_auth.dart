import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  final double textScaleFactor;

  const TabletView({Key? key, required this.textScaleFactor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tablet View',
        style: TextStyle(fontSize: 24 * textScaleFactor),
      ),
    );
  }
}