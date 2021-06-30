
import 'package:flutter/material.dart';
import 'package:personalwebsite/Academic.dart';
import 'package:personalwebsite/AcademicZh.dart';
import 'package:personalwebsite/Experiences.dart';
import 'package:personalwebsite/Projects.dart';
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

            Column(
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

                SizedBox(height: 100,),

                Column(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.red;
                              return null; // Defer to the widget's default.
                            }
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Home');
                      },
                      child: Text('Home'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.red;
                              return null; // Defer to the widget's default.
                            }
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Projects');
                      },
                      child: Text('Projects'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.red;
                              return null; // Defer to the widget's default.
                            }
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Academic');
                      },
                      child: Text('Academic'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.red;
                              return null; // Defer to the widget's default.
                            }
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/AcademicZh');
                      },
                      child: Text('AcademicZh'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.red;
                              return null; // Defer to the widget's default.
                            }
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Experiences');
                      },
                      child: Text('Experiences'),
                    ),
                  ],
                )
              ],
            )



          ],
        )

      )
    );
  }
}
