import 'package:flutter/material.dart';
import 'package:personalwebsite/Academic.dart';
import 'package:personalwebsite/AcademicZh.dart';
import 'package:personalwebsite/Experiences.dart';
import 'package:personalwebsite/Home.dart';

import 'package:personalwebsite/MyHomePage.dart';
import 'package:personalwebsite/Projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LZ',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(title: 'LZ',)
      initialRoute: 'MyHomePage',
      routes: {
        'MyHomePage' : (context) => MyHomePage(title: 'LZ',),
        'Home' : (context) => Home(),
        'Projects' : (context) => Projects(),
        'Academic' : (context) => Academic(),
        'AcademicZh' : (context) => AcademicZh(),
        'Experiences' : (context) => Experiences(),
      },
    );
  }
}
