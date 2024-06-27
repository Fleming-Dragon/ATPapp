import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:your_app_name/Activities/topics.dart';
import 'package:your_app_name/Activities/chapters.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'login.dart';

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

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('ATP', style: TextStyle(fontSize: 18)),
            Text(
              _currentUser != null
                  ? 'Welcome, ${_currentUser!.displayName}'
                  : 'Welcome, Aspirant..',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add notification functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _confirmLogout,
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
                _buildGridItem(Icons.quiz, 'Practice', Colors.purple, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Topics()),
                  );
                }),
                _buildGridItem(Icons.assignment_turned_in, 'Syllabus', Colors.teal),
                _buildGridItem(Icons.support_agent, 'Support', Colors.teal, onTap: () {
                  _launchURL('https://wa.me/9011167740');
                }),
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
        margin: const EdgeInsets.all(5.0),
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

  Widget _buildGridItem(IconData icon, String title, Color color, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap ?? () {
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
            const SizedBox(height: 10),
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _confirmLogout() async {
    final bool? shouldLogout = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Logout'),
          content: const Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );

    if (shouldLogout == true) {
      await _handleSignOut();
    } else {
      _showStayMessage(); // Show the stay message
    }
  }

  Future<void> _handleSignOut() async {
    _showLoadingDialog(); // Show loading dialog
    try {
      await _googleSignIn.signOut();
      Navigator.of(context).pop(); // Hide loading dialog
      setState(() {
        _currentUser = null;
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } catch (error) {
      Navigator.of(context).pop(); // Hide loading dialog
      print(error);
    }
  }

  void _showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: SizedBox(
            height: 50,
            width: 50,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }

  void _showStayMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: const Text('Stay Logged In'),
          title: const Text('Thank you for staying!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
