
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
            // Column(
            //   children: [
            //     Text('ALOHA, I am'),
            //     Text('Litian Zhang'),
            //     Text('I am a college student currently studying computer science and entrepreneurship in Brigham Young University Hawaii '),
            //   ],
            // ),
            TimelineTile(
              oppositeContents: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(''),
              ),
              contents: Card(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Today'),
                ),
              ),
              node: TimelineNode(
                indicator: DotIndicator(),
                startConnector: DashedLineConnector(),
                endConnector: SolidLineConnector(),
              ),
            ),
            SizedBox(
              height: 80.0,
              child: TimelineNode(
                indicator: Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Aloha, I am Litian Zhang'),
                        Text('I am an incoming associate support engineer at SAP China'),
                      ],
                    ),
                  ),
                ),
                startConnector: DashedLineConnector(),
                endConnector: SolidLineConnector(),
              ),
            ),
            TimelineTile(
              oppositeContents: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(''),
              ),
              contents: Card(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('2021'),
                ),
              ),
              node: TimelineNode(
                indicator: DotIndicator(),
                startConnector: SolidLineConnector(),
                endConnector: SolidLineConnector(),
              ),
            ),
            SizedBox(
              height: 80.0,
              child: TimelineNode(
                indicator: Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Aloha, I am Litian Zhang'),
                        Text('I am a college student studying computer science, information system, and entrepreneurship at Brigham Young University Hawaii.'),
                      ],
                    ),
                  ),
                ),
                startConnector: DashedLineConnector(),
                endConnector: SolidLineConnector(),
              ),
            ),
            TimelineTile(
              oppositeContents: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(''),
              ),
              contents: Card(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('2018'),
                ),
              ),
              node: TimelineNode(
                indicator: DotIndicator(),
                startConnector: SolidLineConnector(),
                endConnector: DashedLineConnector(),
              ),
            ),
          ],
        )

      )
    );
  }
}
