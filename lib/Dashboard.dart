import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var username;
  Map userdata = {};

  @override
  Widget build(BuildContext context) {
    userdata = ModalRoute.of(context)!.settings.arguments as Map;
    print(userdata);
    setState(() {
      username = userdata['name'];
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$username",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.red.shade900,
                  backgroundColor: Colors.white),
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/',
                );
              },
              child: Text("Go to home"),
            ),
          ],
        ),
      ),
    );
  }
}
