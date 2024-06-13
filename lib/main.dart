import 'package:flutter/material.dart';
import 'package:atpapp/Activities/home.dart';
// import 'package:atpapp/Activities/LoginPage.dart';
import 'package:atpapp/Activities/test.dart';
import 'package:atpapp/Activities/practice.dart';
import 'package:atpapp/Activities/chapters.dart';
import 'package:atpapp/Activities/marks.dart';
import 'package:atpapp/Activities/questions.dart';
import 'package:atpapp/topics.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      // "/": (context) => LoginPage(),
      "/home": (context) => Home(),
      "/test": (context) => test(),
      "/practice": (context) => Practice(),
      "/topics": (context) => topics(),
      "/chapters": (context) => chapters(),
      "/questions": (context) => questions(),
      "/pMarks": (context) => Marks(),
    },
  ));
}
