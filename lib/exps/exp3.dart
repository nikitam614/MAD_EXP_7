import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    title: "Experiment 3",
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 5;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('New connection!'),
        duration: Duration(milliseconds: 1000),
        showCloseIcon: true,
        backgroundColor: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[300],
        foregroundColor: Colors.white,
        title: const Text('MAD PWA Experiment 3'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: const AssetImage('assets/images/1.png'),
              backgroundColor: Colors.blueGrey[300],
            ),
          ),
          const Divider(
            height: 20.0,
            color: Colors.blueGrey,
            thickness: 2.0,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Name: ",
                  style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Dhruuv Naik", style: TextStyle(fontSize: 20)))
          ]),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Department: ",
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "IT",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Email: ",
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "321dhruuv0037@dbit.in",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Phone: ",
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "1234567890",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Connections: ",
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Connect',
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueGrey[300],
        foregroundColor: Colors.white,
        elevation: 5,
        splashColor: Colors.black,
      ),
    );
  }
}
