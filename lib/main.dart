import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/chapters.dart';
import 'package:your_app_name/Activities/home.dart';
import 'package:your_app_name/Activities/login.dart';
import 'package:your_app_name/Activities/marks.dart';
import 'package:your_app_name/Activities/practice.dart';
import 'package:your_app_name/Activities/questions.dart';
import 'package:your_app_name/Activities/test.dart';
import 'package:your_app_name/Activities/topics.dart';

void main() {
  runApp(MaterialApp(
      home: Home(),


    // routes: {
    //   "/": (context) => LoginPage(),
    //   "/home": (context) => Home(),
    //   "/test": (context) => test(),
    //   "/practice": (context) => Practice(),
    //   "/topics": (context) => topics(),
    //   "/chapters": (context) => chapters(),
    //   "/questions": (context) => questions(),
    //   "/pMarks": (context) => Marks(),
    // },
  ));
}
