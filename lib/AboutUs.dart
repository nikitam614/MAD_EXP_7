import 'package:flutter/material.dart';
import 'package:mad_pwa_exp/navbar.dart';

import 'Dashboard.dart';
import 'Home.dart';
import 'Profile.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/profile': (context) => Profile(),
        '/dashboard': (context) => Dashboard(),
        '/about': (context) => AboutUs(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Experiment 7',
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'MAD PWA Experiment 7',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  "https://dbit.in/images/slider-images/dbit.jpeg",
                  errorBuilder: (context, error, stackTrace) {
                    return Text('Error loading image');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Don Bosco Institute of Technology",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
