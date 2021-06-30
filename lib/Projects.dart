
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
                            clickableTextSpan('the 2021 IEEE Pacific Visualization conference (scroll down to poster #7)', 'http://vis.tju.edu.cn/pvis2021/program_posters.html', context),
                            TextSpan(text: '.\n'),
                            TextSpan(text: 'We propose an interactive radial visualization of tabular data optimized for mobile devices. Our visualization employs a spiral layout, making it suitable for small handheld touchscreens. Users can view an overview of the data, search for specific items, and access details as needed. As a proof of concept of our visualization metaphor, we have implemented two mobile applications: Temples Timeline and Hundred Chinese Surnames. The first shows a chronology of temples operated by the Church of Jesus Christ of Latter-day Saints from 1836 to the present. The second app provides an interactive visualization of the most common Chinese surnames.\n'),
                            clickableTextSpan('Read the Pacific Visualization paper\n', 'https://geoffdraper.com/research/papers/pacvis2021.pdf', context),
                            clickableTextSpan('Hundred Chinese Surnames demo video', 'https://www.youtube.com/watch?v=aQ5BYdYibe8', context),
                            TextSpan(text: " | Download Hundred Chinese Surnames: "),
                            clickableTextSpan('Google Play', 'https://play.google.com/store/apps/details?id=edu.byuh.cis.hundredsurnamesvisualization', context),
                            TextSpan(text: ' or '),
                            clickableTextSpan('Amazon Appstore\n', 'https://www.amazon.com/UI-topia-Labs-Hundred-Chinese-Surnames/dp/B08SF4HW4R/', context),
                            clickableTextSpan('Temples Timeline demo video (English)', 'https://www.youtube.com/watch?v=JPdTlaQkG3c', context),
                            TextSpan(text: ' | '),
                            clickableTextSpan('Temples Timeline demo video (Chinese)', 'https://www.youtube.com/watch?v=yOF114-1Jmw', context),
                            TextSpan(text: ' | '),
                            TextSpan(text: 'Download Temples Timeline: '),
                            clickableTextSpan('Google Play', 'https://play.google.com/store/apps/details?id=edu.byuh.cis.templevis', context),
                            TextSpan(text: ' or '),
                            clickableTextSpan('Amazon Appstore', 'https://www.amazon.com/dp/B089VY6J66/', context),
                            TextSpan(text: ' or '),
                            clickableTextSpan('Apple App Store\n', 'https://apps.apple.com/app/id1529179099', context),
                            TextSpan(text: 'View it on '),
                            clickableTextSpan('my professor’s page', 'https://geoffdraper.com/research/#spiralvis', context),
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
                            clickableTextSpan('the brief history ', 'https://about.byuh.edu/brief-history', context),
                            TextSpan(text: 'of '),
                            clickableTextSpan('Brigham Young University – Hawaii', 'https://www.byuh.edu/', context),
                            TextSpan(text: '. Android and iOS apps awaiting to be published.\nView code on GitHub: '),
                            clickableTextSpan('Android ', 'https://github.com/flybaflyba/BYUH-History-Visualization', context),
                            TextSpan(text: 'and '),
                            clickableTextSpan('iOS', 'https://github.com/flybaflyba/BYUH-History-Visualization-IOS', context),
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
                            clickableTextSpan('Flutter ', 'https://flutter.dev/', context),
                            TextSpan(text: 'that is similar to Facebook where people can make posts and comment on each other. Designed for college students for on-campus communication. This app is a cross-platform project compatible with Android, iOS, and the web.\nView '),
                            clickableTextSpan('code on GitHub', 'https://github.com/flybaflyba/QandA', context),
                            TextSpan(text: '.\nTry it out '),
                            clickableTextSpan('here', 'https://litianzhang.com/byu-h-app/', context),
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
                            clickableTextSpan('Flutter', 'https://flutter.dev/', context),
                            TextSpan(text: '. Implemented user authentication and authorization with '),
                            clickableTextSpan('Firebase Authentication', 'https://firebase.google.com/docs/auth', context),
                            TextSpan(text: '.  Implemented database connection with '),
                            clickableTextSpan('Firebase Cloud Firestore', 'https://firebase.google.com/docs/firestore', context),
                            TextSpan(text: '. Customized views for students/tutors and for each tutor. This app is a cross-platform project compatible with Android, iOS, and the web. \nView '),
                            clickableTextSpan('code on GitHub', 'https://github.com/flybaflyba/Request-Handling-TA', context),
                            TextSpan(text: '.\nTry it out '),
                            clickableTextSpan('here', 'https://byuhtutoring.litianzhang.com/', context),
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
                            clickableTextSpan('the most commonly used one hundred Chinese surnames in China in 2019', 'https://app.mps.gov.cn/gdnps/pc/content.jsp?id=7478899', context),
                            TextSpan(text: '. App name is taken from a book written in ancient China called '),
                            clickableTextSpan('Hundred Family Surnames', 'https://en.wikipedia.org/wiki/Hundred_Family_Surnames', context),
                            TextSpan(text: '. Android app on '),
                            clickableTextSpan('Google Play ', 'https://play.google.com/store/apps/details?id=edu.byuh.cis.hundredsurnamesvisualization', context),
                            TextSpan(text: 'and '),
                            clickableTextSpan('Amazon Appstore', 'https://www.amazon.com/UI-topia-Labs-Hundred-Chinese-Surnames/dp/B08SF4HW4R/', context),
                            TextSpan(text: '.\nView '),
                            clickableTextSpan('code on GitHub', 'https://github.com/flybaflyba/Hundred-Surnames-Visualization', context),
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
                            clickableTextSpan('PlanzApp', 'https://www.planzapp.app/', context),
                            TextSpan(text: '. We used Flutter/Dart to develop Android and ios versions of PlanzApp. Connected app to '),
                            clickableTextSpan(' Google Firebase', 'https://firebase.google.com/', context),
                            TextSpan(text: '. I implemented the plan creation process, user settings, and email notifications. This app is a cross-platform project compatible for Android and iOS. \nView  '),
                            clickableTextSpan(' company website', 'https://www.planzapp.app/', context),
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
                            clickableTextSpan('the temples ', 'https://www.churchofjesuschrist.org/temples/list?lang=eng', context),
                            TextSpan(text: 'of '),
                            clickableTextSpan('The Church of Jesus Christ of Latter-day Saints', 'https://www.churchofjesuschrist.org/?lang=eng', context),
                            TextSpan(text: '. Android app on '),
                            clickableTextSpan('Google Play ', 'https://play.google.com/store/apps/details?id=edu.byuh.cis.templevis', context),
                            TextSpan(text: 'and '),
                            clickableTextSpan('Amazon Appstore', 'https://www.amazon.com/dp/B089VY6J66/', context),
                            TextSpan(text: ', iOS app on '),
                            clickableTextSpan('App Store', 'https://apps.apple.com/app/id1529179099', context),
                            TextSpan(text: '.\nView code on GitHub: '),
                            clickableTextSpan('Android ', 'https://github.com/flybaflyba/LDS-Temple-Visualization', context),
                            TextSpan(text: 'and '),
                            clickableTextSpan('iOS', 'https://github.com/flybaflyba/LDS-Temple-Visualization-IOS', context),
                            TextSpan(text: '.\nView '),
                            clickableTextSpan('App page', 'https://latterdaytemples.litianzhang.com/', context),
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
                            clickableTextSpan('WordPress', 'https://wordpress.com/', context),
                            TextSpan(text: '. Timel is an entrepreneurship at '),
                            clickableTextSpan('Wills Center ', 'https://willescenter.byuh.edu/', context),
                            TextSpan(text: 'of '),
                            clickableTextSpan('Brigham Young University – Hawaii', 'https://www.byuh.edu/', context),
                            TextSpan(text: '. Timel is an online store business that imports products from China and sells them to its US customer. The '),
                            clickableTextSpan('BYUH bookstore ', 'https://bookstore.byuh.edu/', context),
                            TextSpan(text: 'was one of its customers. Timel made it to the semi-final list in the '),
                            clickableTextSpan(' Great Idea completion ', 'https://willescenter.byuh.edu/competitions/great-ideas/', context),
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
