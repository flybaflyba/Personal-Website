
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Wrap(
          children: [
            SizedBox(
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Aloha, I am Litian Zhang\nI am an incoming associate support engineer at SAP China',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        )

      )
    );
  }
}
