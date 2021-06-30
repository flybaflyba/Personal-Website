

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

TextSpan clickableTextSpan(String text, String url, BuildContext context) {
  return TextSpan(
      style: TextStyle(color: Colors.blue),
      text: text,
      recognizer: TapGestureRecognizer()..onTap =  () async{
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          linkBrokenDialog(context);
          throw 'Could not launch $url';
        }
      }
  );
}

void linkBrokenDialog(BuildContext context) {
  AwesomeDialog(
      context: context,
      dialogType: DialogType.NO_HEADER,
      // headerAnimationLoop: true,
      width: 400,
      animType: AnimType.TOPSLIDE,
      showCloseIcon: true,
      closeIcon: Icon(Icons.close_fullscreen_outlined),
      title: 'Warning',
      desc:
      'Broken Link',
      // btnCancelOnPress: () {},
      onDissmissCallback: (type) {
        debugPrint('Dialog Dismiss from callback $type');
      },
      btnOkOnPress: () {}
      )
    ..show();
}