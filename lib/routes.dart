import 'package:flutter/material.dart';
import 'package:winnerlucky/widget/authen.dart';
import 'package:winnerlucky/widget/register.dart';

final Map<String, WidgetBuilder> routes = {
  '/authen': (BuildContext context) => Authen(),
  '/register': (BuildContext context) => Register(),
};
