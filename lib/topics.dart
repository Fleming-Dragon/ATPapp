import 'package:flutter/material.dart';

class topics extends StatefulWidget {
  const topics({super.key});

  @override
  State<topics> createState() => _topicsState();
}

class _topicsState extends State<topics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Topics Window"),
    );
  }
}
