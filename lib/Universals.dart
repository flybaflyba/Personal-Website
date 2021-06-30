

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

TextSpan clickableTextSpan(String text, String url) {
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

