import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/chapters.dart';

class Topics extends StatelessWidget {
  const Topics({super.key});

  void _navigateToChapters(BuildContext context, String topic) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChaptersScreen(topic: topic),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Topics',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0), // Adjust this value to move the buttons further upwards
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () => _navigateToChapters(context, 'Acts'),
                child: const Text('Acts'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Rounded edges
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40), // Increased padding
                  minimumSize: const Size(300, 80), // Bigger size for the button
                  textStyle: const TextStyle(fontSize: 20), // Bigger text size
                ),
              ),
              const SizedBox(height: 30), // Increased space between the buttons
              ElevatedButton(
                onPressed: () => _navigateToChapters(context, 'Theory'),
                child: const Text('Theory'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Rounded edges
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40), // Increased padding
                  minimumSize: const Size(300, 80), // Bigger size for the button
                  textStyle: const TextStyle(fontSize: 20), // Bigger text size
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
