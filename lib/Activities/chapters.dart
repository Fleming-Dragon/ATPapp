import 'package:flutter/material.dart';

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
                      // Handle chapter button press
                      print('${chapters[index]} pressed');
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
        return List.generate(30, (index) => 'Acts Chapter ${index + 1}');
      case 'Theory':
        return List.generate(30, (index) => 'Theory Chapter ${index + 1}');
      default:
        return [];
    }
  }
}
