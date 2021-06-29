
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget{

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects>{

  TextSpan clickableText(String text, String url) {

    return TextSpan(
        style: TextStyle(color: Colors.blue),
        text: text,
        recognizer: TapGestureRecognizer()..onTap =  () async{
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text('Research'),
          Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: '2021\n',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(text: 'Spiral Visualization for Mobile Devices\n', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Presented at '),
                        clickableText('the 2021 IEEE Pacific Visualization conference (scroll down to poster #7)', ''),
                        TextSpan(text: '.\n'),
                        TextSpan(text: 'We propose an interactive radial visualization of tabular data optimized for mobile devices. Our visualization employs a spiral layout, making it suitable for small handheld touchscreens. Users can view an overview of the data, search for specific items, and access details as needed. As a proof of concept of our visualization metaphor, we have implemented two mobile applications: Temples Timeline and Hundred Chinese Surnames. The first shows a chronology of temples operated by the Church of Jesus Christ of Latter-day Saints from 1836 to the present. The second app provides an interactive visualization of the most common Chinese surnames.\n'),
                        clickableText('Read the Pacific Visualization paper\n', ''),
                        clickableText('Hundred Chinese Surnames demo video', ''),
                        TextSpan(text: " | Download Hundred Chinese Surnames: "),
                        clickableText('Google Play', ''),
                        TextSpan(text: ' or '),
                        clickableText('Amazon Appstore\n', ''),
                        clickableText('Temples Timeline demo video (English)', ''),
                        TextSpan(text: ' | '),
                        clickableText('Temples Timeline demo video (Chinese)', ''),
                        TextSpan(text: ' | '),
                        TextSpan(text: 'Download Temples Timeline: '),
                        clickableText('Google Play', ''),
                        TextSpan(text: ' or '),
                        clickableText('Amazon Appstore', ''),
                        TextSpan(text: ' or '),
                        clickableText('Apple App Store\n', ''),
                        clickableText('View it on my professor’s page', ''),
                        TextSpan(text: '.\n'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )







        ],
      )
    );
  }
}
