import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/Tests/questions.dart';
import 'package:your_app_name/Activities/Tests/questions2.dart';
import 'package:your_app_name/Activities/Tests/questions3.dart';
import 'package:your_app_name/Activities/Tests/questions4.dart';
import 'package:your_app_name/Activities/Tests/questions5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyChaptersScreen(),
    );
  }
}

class MyChaptersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Chapters'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChaptersScreen(topic: 'Acts'),
                  ),
                );
              },
              child: Text('Acts'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChaptersScreen(topic: 'Theory'),
                  ),
                );
              },
              child: Text('Theory'),
            ),
          ],
        ),
      ),
    );
  }
}

class ChaptersScreen extends StatelessWidget {
  final String topic;

  const ChaptersScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    List<Widget> chapterButtons = _getChapterButtons(context, topic);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Chapters in $topic',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: chapterButtons,
          ),
        ),
      ),
    );
  }

  List<Widget> _getChapterButtons(BuildContext context, String topic) {
    if (topic == 'Acts') {
      return [
        _buildChapterButton(context, 'Regional Plan Rules', questions1()),
        _buildChapterButton(context, 'Development Plan Rules', questions2()),
        _buildChapterButton(
            context, 'Town Planning Scheme Rules', questions3()),
        _buildChapterButton(context, 'Development Charge Rules', questions4()),
        _buildChapterButton(
            context, 'Compounded Structure Rules', questions5()),
      ];
    } else if (topic == 'Theory') {
      return [
        _buildChapterButton(context, 'Theory Chapter 1', questions1()),
        _buildChapterButton(context, 'Theory Chapter 2', questions2()),
      ];
    } else {
      return [];
    }
  }

  Widget _buildChapterButton(
      BuildContext context, String title, Widget screen) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        width: 400,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screen,
              ),
            );
          },
          child: Text(title),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
