import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ATP', style: TextStyle(fontSize: 18)),
            Text(
              'Hello, Rushikesh Rajapure',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 33, 208, 243),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add notification functionality here
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: [
          _buildGridItem(Icons.school, 'Courses', Colors.blue),
          _buildGridItem(Icons.receipt, 'Test Series', Colors.green),
          _buildGridItem(Icons.book, 'Book Store', Colors.orange),
          _buildGridItem(Icons.book_online, 'E-Books', Colors.red),
          _buildGridItem(Icons.quiz, 'Quiz', Colors.purple),
          _buildGridItem(
              Icons.assignment_turned_in, 'Free Weekly Tests', Colors.teal),
          _buildGridItem(
              Icons.video_collection, 'Youtube Videos', Colors.amber),
          _buildGridItem(
              Icons.library_books, 'Free Study Material', Colors.cyan),
          _buildGridItem(Icons.menu_book, 'Syllabus', Colors.pink),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality here
          print('Button Pressed!');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String title, Color color) {
    return InkWell(
      onTap: () {
        // Handle tap on the grid item
        print('$title pressed');
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color.withOpacity(0.5), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: color),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
