import 'package:flutter/material.dart';

import 'package:personalwebsite/MyHomePage.dart';

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
      },
    );
  }
}
