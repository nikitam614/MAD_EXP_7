import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Experiment 4",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[300],
          foregroundColor: Colors.white,
          title: Text('Help Near You'),
        ),
        body: ListView(
          children: [
            SizedBox(height: 10),
            Card(
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text('Police stations'),
                subtitle: Row(children: [Icon(Icons.phone), Text('100')]),
                leading: Icon(Icons.local_police_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () async {
                  try {
                    await launchUrl(Uri.parse(
                        "https://www.google.com/maps/search/police+stations+near+me"));
                  } catch (e) {
                    print("Could not launch Google Maps link" + e.toString());
                  }
                  ;
                },
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text('Hospitals'),
                subtitle: Row(children: [Icon(Icons.phone), Text('102/108')]),
                leading: Icon(Icons.local_police_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () async {
                  try {
                    await launchUrl(Uri.parse(
                        "https://www.google.com/maps/search/hospitals+near+me"));
                  } catch (e) {
                    print("Could not launch Google Maps link" + e.toString());
                  }
                  ;
                },
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text('Fire stations'),
                subtitle: Row(children: [Icon(Icons.phone), Text('101')]),
                leading: Icon(Icons.local_police_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () async {
                  try {
                    await launchUrl(Uri.parse(
                        "https://www.google.com/maps/search/fire+stations+near+me"));
                  } catch (e) {
                    print("Could not launch Google Maps link" + e.toString());
                  }
                  ;
                },
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text('Medicals'),
                leading: Icon(Icons.local_police_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () async {
                  try {
                    await launchUrl(Uri.parse(
                        "https://www.google.com/maps/search/medicals+near+me"));
                  } catch (e) {
                    print("Could not launch Google Maps link" + e.toString());
                  }
                  ;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
