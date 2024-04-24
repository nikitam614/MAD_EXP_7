import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'Home.dart';
import 'Profile.dart';
import 'Dashboard.dart';

// import 'package:flutter_sms/flutter_sms.dart';
void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: "Experiment 7",
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/profile': (context) => Profile(),
        '/dashboard': (context) => Dashboard(),
        '/about': (context) => AboutUs()
      },
    );
  }
}
