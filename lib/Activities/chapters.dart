import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/questions.dart';
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
    List<String> chapters = _getChapters(topic);

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
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              itemCount: chapters.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => questions(),
                          ),
                        );
                      } else {
                        // Handle other chapter button press if needed
                        print('${chapters[index]} pressed');
                      }
                    },
                    child: Text(chapters[index]),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<String> _getChapters(String topic) {
    switch (topic) {
      case 'Acts':
        return List.generate(2, (index) => 'Acts Chapter ${index + 1}');
      case 'Theory':
        return List.generate(2, (index) => 'Theory Chapter ${index + 1}');
      default:
        return [];
    }
  }
}
