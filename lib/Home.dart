import 'package:flutter/material.dart';
import 'package:mad_pwa_exp/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text(
          "Hello World!",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red.shade900,
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(fontSize: 30),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Welcome to MAD Lab",
              style: TextStyle(
                  fontSize: 40, color: Colors.black, fontFamily: 'Tinos'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red.shade900,
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                    print("Logging in");
                  },
                  child: const Text(
                    "Click to login",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.red.shade900,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
      ),
    );
  }
}
