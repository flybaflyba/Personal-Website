
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:thumbnailer/thumbnailer.dart';
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
        widgetSize: 150,
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
                            TextSpan(text: 'View it on '),
                            clickableText('my professor’s page', ''),
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
                            clickableText('the brief history ', ''),
                            TextSpan(text: 'of '),
                            clickableText('Brigham Young University – Hawaii', ''),
                            TextSpan(text: '. Android and iOS apps awaiting to be published.\nView code on GitHub: '),
                            clickableText('Android ', ''),
                            TextSpan(text: 'and '),
                            clickableText('iOS', ''),
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
                            clickableText('Flutter ', ''),
                            TextSpan(text: 'that is similar to Facebook where people can make posts and comment on each other. Designed for college students for on-campus communication. This app is a cross-platform project compatible with Android, iOS, and the web.\nView '),
                            clickableText('code on GitHub', ''),
                            TextSpan(text: '.\nTry it out '),
                            clickableText('here', ''),
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
                            clickableText('Flutter', ''),
                            TextSpan(text: '. Implemented user authentication and authorization with '),
                            clickableText('Firebase Authentication', ''),
                            TextSpan(text: '.  Implemented database connection with '),
                            clickableText('Firebase Cloud Firestore', ''),
                            TextSpan(text: '. Customized views for students/tutors and for each tutor. This app is a cross-platform project compatible with Android, iOS, and the web. \nView '),
                            clickableText('code on GitHub', ''),
                            TextSpan(text: '.\nTry it out '),
                            clickableText('here', ''),
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
                            clickableText('the most commonly used one hundred Chinese surnames in China in 2019', ''),
                            TextSpan(text: '. App name is taken from a book written in ancient China called '),
                            clickableText('Hundred Family Surnames', ''),
                            TextSpan(text: '. Android app on '),
                            clickableText('Google Play ', ''),
                            TextSpan(text: 'and '),
                            clickableText('Amazon Appstore', ''),
                            TextSpan(text: '.\nView '),
                            clickableText('code on GitHub', ''),
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
                            clickableText('PlanzApp', ''),
                            TextSpan(text: '. We used Flutter/Dart to develop Android and ios versions of PlanzApp. Connected app to '),
                            clickableText(' Google Firebase', ''),
                            TextSpan(text: '. I implemented the plan creation process, user settings, and email notifications. This app is a cross-platform project compatible for Android and iOS. \nView  '),
                            clickableText(' company website', ''),
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
                            clickableText('the temples ', ''),
                            TextSpan(text: 'of '),
                            clickableText('The Church of Jesus Christ of Latter-day Saints', ''),
                            TextSpan(text: '. Android app on '),
                            clickableText('Google Play ', ''),
                            TextSpan(text: 'and '),
                            clickableText('Amazon Appstore', ''),
                            TextSpan(text: ', iOS app on '),
                            clickableText('App Store', ''),
                            TextSpan(text: '.\nView code on GitHub: '),
                            clickableText('Android ', ''),
                            TextSpan(text: 'and '),
                            clickableText('iOS', ''),
                            TextSpan(text: '.\nView '),
                            clickableText('App page', ''),
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
                            clickableText('WordPress', ''),
                            TextSpan(text: '. Timel is an entrepreneurship at '),
                            clickableText('Wills Center ', ''),
                            TextSpan(text: 'of '),
                            clickableText('Brigham Young University – Hawaii', ''),
                            TextSpan(text: '. Timel is an online store business that imports products from China and sells them to its US customer. The '),
                            clickableText('BYUH bookstore ', ''),
                            TextSpan(text: 'was one of its customers. Timel made it to the semi-final list in the '),
                            clickableText(' Great Idea completion ', ''),
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
