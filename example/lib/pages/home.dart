import 'package:android_dpad_detector/dpad_detector.dart';
import 'package:flutter/material.dart';

import 'second.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: DPadDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Launch SecondPage"),
          ),
        ),
      ),
    );
  }
}
