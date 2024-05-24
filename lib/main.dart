// ignore_for_file: prefer_const_constructors


//import 'package:anfeca_kn/splash_page.dart';
//import 'package:anfeca_kn/home_page.dart';
import 'package:anfeca_kn/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
