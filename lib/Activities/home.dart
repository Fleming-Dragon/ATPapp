import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        primarySwatch: Colors.grey,
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
  final List<String> imgList = [
    'https://via.placeholder.com/600x400.png?text=Sample+Image+1',
    'https://via.placeholder.com/600x400.png?text=Sample+Image+2',
    'https://via.placeholder.com/600x400.png?text=Sample+Image+3',
    'https://via.placeholder.com/600x400.png?text=Sample+Image+4',
    'https://via.placeholder.com/600x400.png?text=Sample+Image+5',
  ];

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
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add notification functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _buildCarousel(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16.0),
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              children: [
                _buildGridItem(Icons.receipt, 'Custom Tests', Colors.green),
                _buildGridItem(Icons.quiz, 'Practice', Colors.purple),
                _buildGridItem(Icons.assignment_turned_in, 'Syllabus', Colors.teal),
                _buildGridItem(Icons.support_agent, 'Support', Colors.teal),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
      ),
      items: imgList.map((item) => Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(item),
            fit: BoxFit.cover,
          ),
        ),
      )).toList(),
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
