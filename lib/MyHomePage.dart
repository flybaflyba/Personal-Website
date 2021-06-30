


import 'package:bottom_navy_bar/bottom_navy_bar.dart';
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


  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: Text("Litian Zhang")),
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: [
              Home(),
              Projects(),
              Academic(),
              Experiences(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home)
            ),
            BottomNavyBarItem(
                title: Text('Projects'),
                icon: Icon(Icons.build)
            ),
            BottomNavyBarItem(
                title: Text('Academic'),
                icon: Icon(Icons.book)
            ),
            BottomNavyBarItem(
                title: Text('Experiences'),
                icon: Icon(Icons.work)
            ),
          ],
        ),
      );
    //   MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: DefaultTabController(
    //     length: 4,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         bottom: TabBar(
    //           tabs: [
    //             Tab(text: 'Home',),
    //             Tab(text: 'Projects',),
    //             Tab(text: 'Academic',),
    //             Tab(text: 'Experiences',),
    //           ],
    //         ),
    //         title: Text(widget.title),
    //       ),
    //       body: TabBarView(
    //         children: [
    //           Home(),
    //           Projects(),
    //           Academic(),
    //           Experiences(),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
