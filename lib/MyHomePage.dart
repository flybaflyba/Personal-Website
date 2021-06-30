


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalwebsite/Academic.dart';
import 'package:personalwebsite/BlankPage.dart';
import 'package:personalwebsite/Experiences.dart';
import 'package:personalwebsite/Home.dart';
import 'package:personalwebsite/Projects.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Home',),
                Tab(text: 'Projects',),
                Tab(text: 'Academic',),
                Tab(text: 'Experiences',),
              ],
            ),
            title: Text(widget.title),
          ),
          body: TabBarView(
            children: [
              Home(),
              Projects(),
              Academic(),
              Experiences(),
            ],
          ),
        ),
      ),
    );
  }
}
