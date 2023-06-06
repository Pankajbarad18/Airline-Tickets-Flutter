// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoping_app/Pages/FirstPage.dart';
import 'package:shoping_app/Pages/HomePage.dart';
import 'package:shoping_app/Pages/LoginPage.dart';
import 'package:shoping_app/Pages/SignUp.dart';
import 'package:shoping_app/Utilities/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primary),

      ///home: FirstPage(),
      initialRoute: '/Home',
      routes: {
        '/': (context) => FirstPage(),
        '/Login': (context) => LoginPage(),
        '/SignUp': (context) => SignUpPage(),
        '/Home': (context) => HomePage(),
      },
    );
  }
}
