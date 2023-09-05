import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Responsive App'),
        ),
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
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  final double textScaleFactor;

  const MobileView({Key? key, required this.textScaleFactor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Mobile View',
        style: TextStyle(fontSize: 24 * textScaleFactor),
      ),
    );
  }
}

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

class DesktopView extends StatelessWidget {
  final double textScaleFactor;

  const DesktopView({Key? key, required this.textScaleFactor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Desktop View',
        style: TextStyle(fontSize: 24 * textScaleFactor),
      ),
    );
  }
}