import 'package:flutter_web/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    Widget buildContainer(Color bgColor, Color textColor, String text) {
      return Container(
        color: bgColor,
        height: screenSize.height,
        width: screenSize.width,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 42,
                color: textColor,
                fontFamily: 'Metropolis',
                fontFamilyFallback: ['Arial']),
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildContainer(Color(0xFFFAF7F9), Color(0xFF605259), 'Hi there!'),
            buildContainer(Color(0xFF24292E), Color(0xFFFAF7F9), 'Go away!'),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
