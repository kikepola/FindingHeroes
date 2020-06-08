import 'package:finding_heroes/pages/login_page.dart';
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
