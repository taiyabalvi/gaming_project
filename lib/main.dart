import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/log_in.dart';
import 'screens/sign_up.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/second',
      routes: {
        '/': (context) => BackgroundImage(),
        '/second': (context) => SignUP(),
      },
    ),
  );
}
