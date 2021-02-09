import 'package:flutter/material.dart';

class Style {
  Color darkColor = Color(0xff0077c2);
  Color prinaryColor = Color(0xff42a5f5);
  Color lightColor = Color(0xff80d6ff);

  Widget logo() => Image.asset('images/bunny.png');

  Widget title1(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );
  Widget title2(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: darkColor,
        ),
      );
  Widget title3(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 30,
          color: darkColor,
        ),
      );

  Style();
}
