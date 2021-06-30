
import 'package:flutter/material.dart';
import 'package:personalwebsite/Universals.dart';
import 'package:timelines/timelines.dart';

class Experiences extends StatefulWidget{

  @override
  _ExperiencesState createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences>{

  Column timeLineView() {
    return Column(
      children: [
        SizedBox(
          height: 80.0,
          child: TimelineNode(
            indicator: Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Today'),
              ),
            ),
            startConnector: DashedLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),
        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2021.04'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Quit Web Designer \nQuit Teaching Assistant for Physics'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2020.12'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Quit Software Engineer Intern'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2020.09'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Begin Software Engineer Intern \nQuit Teaching Assistant for Computer & Information Science'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2020.07'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Begin Web Designer'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2020.04'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Begin Teaching Assistant for Physics \nQuit Tutor for Mathematics'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2020.01'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Begin Teaching Assistant for Computer & Information Science'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2019.09'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Begin Tutor for Mathematics \nQuit AC Technician and Electrician Assistant'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2018.03'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Begin AC Technician and Electrician Assistant'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2017.12'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Quit Missionary Australia Sydney South Mission'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),

        TimelineTile(
          oppositeContents: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('2016.01'),
          ),
          contents: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Begin Missionary Australia Sydney South Mission'),
            ),
          ),
          node: TimelineNode(
            indicator: DotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: DashedLineConnector(),
          ),
        ),


      ],
    );
  }

  Column tableView() {
    return Column(children: <Widget>[
      Container(
          margin: EdgeInsets.only(top: 10),
          child: RichText(
              text: TextSpan(
                children: [clickableTextSpan('Brigham Young University Hawaii', '', context),],
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
                children: [clickableTextSpan('PlanzApp', '', context),],
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
                children: [clickableTextSpan('The Church of Jesus Christ of Latter-Day Saints', '', context),],
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
    ]);
  }

  var iconStyle = Icon(Icons.timeline, color: Colors.blueAccent,);
  var iconTip = 'Timeline View';
  var tableViewActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child:  IconButton(
                  icon: iconStyle,
                  tooltip: iconTip,
                  onPressed: () {
                    setState(() {
                      if(tableViewActive) {
                        iconStyle = Icon(Icons.table_rows_outlined, color: Colors.blueAccent,);
                        iconTip = 'Table View';
                        tableViewActive = false;
                      } else {
                        iconStyle = Icon(Icons.timeline, color: Colors.blueAccent,);
                        iconTip = 'Timeline View';
                        tableViewActive = true;
                      }

                    });
                  },
                ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: tableViewActive ? tableView() : timeLineView(),
              ),



            ],
          ),

      )
    );
  }
}
