
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personalwebsite/Universals.dart';
import 'package:thumbnailer/thumbnailer.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget{

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects>{

  Widget thumbnailFromAsset(String imageName) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Thumbnail(
        dataResolver: () async {
          return (await DefaultAssetBundle.of(context)
              .load('assets/images/$imageName'))
              .buffer
              .asUint8List();
        },
        mimeType: 'image/webp',
        widgetSize: MediaQuery.of(context).size.width * 0.1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10,),
            child: Text('Research', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,),
          ),
          
          Row(
            children: [
              thumbnailFromAsset('spiral_research.webp'),
              Flexible(child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: '2021\n',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: 'Spiral Visualization for Mobile Devices\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Presented at '),
                            clickableTextSpan('the 2021 IEEE Pacific Visualization conference (scroll down to poster #7)', '', context),
                            TextSpan(text: '.\n'),
                            TextSpan(text: 'We propose an interactive radial visualization of tabular data optimized for mobile devices. Our visualization employs a spiral layout, making it suitable for small handheld touchscreens. Users can view an overview of the data, search for specific items, and access details as needed. As a proof of concept of our visualization metaphor, we have implemented two mobile applications: Temples Timeline and Hundred Chinese Surnames. The first shows a chronology of temples operated by the Church of Jesus Christ of Latter-day Saints from 1836 to the present. The second app provides an interactive visualization of the most common Chinese surnames.\n'),
                            clickableTextSpan('Read the Pacific Visualization paper\n', '', context),
                            clickableTextSpan('Hundred Chinese Surnames demo video', '', context),
                            TextSpan(text: " | Download Hundred Chinese Surnames: "),
                            clickableTextSpan('Google Play', '', context),
                            TextSpan(text: ' or '),
                            clickableTextSpan('Amazon Appstore\n', '', context),
                            clickableTextSpan('Temples Timeline demo video (English)', '', context),
                            TextSpan(text: ' | '),
                            clickableTextSpan('Temples Timeline demo video (Chinese)', '', context),
                            TextSpan(text: ' | '),
                            TextSpan(text: 'Download Temples Timeline: '),
                            clickableTextSpan('Google Play', '', context),
                            TextSpan(text: ' or '),
                            clickableTextSpan('Amazon Appstore', '', context),
                            TextSpan(text: ' or '),
                            clickableTextSpan('Apple App Store\n', '', context),
                            TextSpan(text: 'View it on '),
                            clickableTextSpan('my professor’s page', '', context),
                            TextSpan(text: '.\n'),
                          ],
                        ),
                      ),
                    )
                ),
              ),)
            ],
          ),


          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text('Applications', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,),
          ),

          Row(
            children: [
              thumbnailFromAsset('byuh_history.webp'),
              Flexible(child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: '2021\n',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: 'BYUH History\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Spiral Visualization for '),
                            clickableTextSpan('the brief history ', '', context),
                            TextSpan(text: 'of '),
                            clickableTextSpan('Brigham Young University – Hawaii', '', context),
                            TextSpan(text: '. Android and iOS apps awaiting to be published.\nView code on GitHub: '),
                            clickableTextSpan('Android ', '', context),
                            TextSpan(text: 'and '),
                            clickableTextSpan('iOS', '', context),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    )
                ),
              ),)
            ],
          ),


          Row(
            children: [
              thumbnailFromAsset('campus_forum.webp'),
              Flexible(child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: '2021\n',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: 'Campus Forum\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'An app built with '),
                            clickableTextSpan('Flutter ', '', context),
                            TextSpan(text: 'that is similar to Facebook where people can make posts and comment on each other. Designed for college students for on-campus communication. This app is a cross-platform project compatible with Android, iOS, and the web.\nView '),
                            clickableTextSpan('code on GitHub', '', context),
                            TextSpan(text: '.\nTry it out '),
                            clickableTextSpan('here', '', context),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    )
                ),
              ),)
            ],
          ),


          Row(
            children: [
              thumbnailFromAsset('request_handling.webp'),
              Flexible(child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: '2020\n',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: 'Request Handing - Tutoring\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Built with '),
                            clickableTextSpan('Flutter', '', context),
                            TextSpan(text: '. Implemented user authentication and authorization with '),
                            clickableTextSpan('Firebase Authentication', '', context),
                            TextSpan(text: '.  Implemented database connection with '),
                            clickableTextSpan('Firebase Cloud Firestore', '', context),
                            TextSpan(text: '. Customized views for students/tutors and for each tutor. This app is a cross-platform project compatible with Android, iOS, and the web. \nView '),
                            clickableTextSpan('code on GitHub', '', context),
                            TextSpan(text: '.\nTry it out '),
                            clickableTextSpan('here', '', context),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    )
                ),
              ),)
            ],
          ),


          Row(
            children: [
              thumbnailFromAsset('bai_jia_xing.webp'),
              Flexible(child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: '2020\n',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: 'Hundred Chinese Surnames\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Spiral Visualization for '),
                            clickableTextSpan('the most commonly used one hundred Chinese surnames in China in 2019', '', context),
                            TextSpan(text: '. App name is taken from a book written in ancient China called '),
                            clickableTextSpan('Hundred Family Surnames', '', context),
                            TextSpan(text: '. Android app on '),
                            clickableTextSpan('Google Play ', '', context),
                            TextSpan(text: 'and '),
                            clickableTextSpan('Amazon Appstore', '', context),
                            TextSpan(text: '.\nView '),
                            clickableTextSpan('code on GitHub', '', context),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    )
                ),
              ),)
            ],
          ),


          Row(
            children: [
              thumbnailFromAsset('planzapp.webp'),
              Flexible(child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: '2020\n',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: 'PlanzApp\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'An internship project with '),
                            clickableTextSpan('PlanzApp', '', context),
                            TextSpan(text: '. We used Flutter/Dart to develop Android and ios versions of PlanzApp. Connected app to '),
                            clickableTextSpan(' Google Firebase', '', context),
                            TextSpan(text: '. I implemented the plan creation process, user settings, and email notifications. This app is a cross-platform project compatible for Android and iOS. \nView  '),
                            clickableTextSpan(' company website', '', context),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    )
                ),
              ),)
            ],
          ),


          Row(
            children: [
              thumbnailFromAsset('temples_timeline.webp'),
              Flexible(child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: '2020\n',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: 'Temples Timeline\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Spiral Visualization for '),
                            clickableTextSpan('the temples ', '', context),
                            TextSpan(text: 'of '),
                            clickableTextSpan('The Church of Jesus Christ of Latter-day Saints', '', context),
                            TextSpan(text: '. Android app on '),
                            clickableTextSpan('Google Play ', '', context),
                            TextSpan(text: 'and '),
                            clickableTextSpan('Amazon Appstore', '', context),
                            TextSpan(text: ', iOS app on '),
                            clickableTextSpan('App Store', '', context),
                            TextSpan(text: '.\nView code on GitHub: '),
                            clickableTextSpan('Android ', '', context),
                            TextSpan(text: 'and '),
                            clickableTextSpan('iOS', '', context),
                            TextSpan(text: '.\nView '),
                            clickableTextSpan('App page', '', context),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    )
                ),
              ),)
            ],
          ),


          Row(
            children: [
              thumbnailFromAsset('timel.webp'),
              Flexible(child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: '2019\n',
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: 'Timel Online Store\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Built with '),
                            clickableTextSpan('WordPress', '', context),
                            TextSpan(text: '. Timel is an entrepreneurship at '),
                            clickableTextSpan('Wills Center ', '', context),
                            TextSpan(text: 'of '),
                            clickableTextSpan('Brigham Young University – Hawaii', '', context),
                            TextSpan(text: '. Timel is an online store business that imports products from China and sells them to its US customer. The '),
                            clickableTextSpan('BYUH bookstore ', '', context),
                            TextSpan(text: 'was one of its customers. Timel made it to the semi-final list in the '),
                            clickableTextSpan(' Great Idea completion ', '', context),
                            TextSpan(text: 'held by Wills Center in 2019. Timel was at timelcompany.com.'),
                          ],
                        ),
                      ),
                    )
                ),
              ),)
            ],
          ),







        ],
      )
    );
  }
}
