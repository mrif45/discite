import 'package:discite/app/UI/login_view.dart';
import 'package:discite/app/UI/splash_view.dart';
import 'package:discite/app/signIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discite',
      theme: ThemeData(
      ),
      home: LoginView(key: key),
    );
  }
}