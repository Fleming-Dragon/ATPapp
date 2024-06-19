import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:your_app_name/Activities/chapters.dart';
import 'package:your_app_name/Activities/login.dart';
import 'package:your_app_name/Activities/home.dart';
import 'package:your_app_name/Activities/chapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),

      },
    );
  }
}
