import 'package:finding_heroes/screens/home_page.dart';
import 'package:finding_heroes/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finding Heroes',
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
