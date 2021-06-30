
import 'package:flutter/material.dart';
import 'package:personalwebsite/Universals.dart';

class Experiences extends StatefulWidget{

  @override
  _ExperiencesState createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Wrap(
            children: [
              Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: RichText(
                        text: TextSpan(
                          children: [clickableTextSpan('Brigham Young University Hawaii', ''),],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                    )
                ),

                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Table(
                    children: [
                      TableRow(
                          children:[
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('Web Designer')]),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('2020.07 – 2021.04')]),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('Teaching Assistant for Physics')]),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('2020.04 – 2021.04')]),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('Teaching Assistant for Computer & Information Science')]),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('2020.01 – 2020.09')]),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('Tutor for Mathematics')]),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('2019.09 – 2020.04')]),
                            )
                          ]
                      ),
                      TableRow(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('AC Technician and Electrician Assistant')]),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('2018.03 – 2019.09')]),
                            ),
                          ]
                      ),
                    ],
                  ),
                ),

                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: RichText(
                        text: TextSpan(
                          children: [clickableTextSpan('PlanzApp', ''),],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                    )
                ),

                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('Software Engineer Intern')]),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('2020.09 – 2020.12')]),
                            )
                          ]
                      ),
                    ],
                  ),
                ),

                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: RichText(
                        text: TextSpan(
                          children: [clickableTextSpan('The Church of Jesus Christ of Latter-Day Saints', ''),],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                    )
                ),

                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('Missionary of Australia Sydney South Mission')]),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Column(children:[Text('2016.01 – 2017.12')]),
                            )
                          ]
                      ),
                    ],
                  ),
                ),
              ])
            ],
          )
      )
    );
  }
}
