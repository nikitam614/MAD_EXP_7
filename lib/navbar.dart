import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var username = "Loading User...";
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 237, 221, 223),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Facilities Near You",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text('Police Stations'),
                leading: Icon(Icons.local_police_outlined),
                onTap: () async {
                  try {
                    await launchUrl(Uri.parse(
                        "https://www.google.com/maps/search/police+station+near+me"));
                  } catch (e) {
                    print("Could not launch Google Maps link" + e.toString());
                  }
                  ;
                },
              ),
              ListTile(
                title: Text('Hospitals'),
                leading: Icon(Icons.local_hospital_outlined),
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
              ListTile(
                title: Text('Medicals'),
                leading: Icon(Icons.medication_outlined),
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
              ListTile(
                title: Text('Bus Stops'),
                leading: Icon(Icons.directions_bus_outlined),
                onTap: () async {
                  try {
                    await launchUrl(Uri.parse(
                        "https://www.google.com/maps/search/bus+stops+near+me"));
                  } catch (e) {
                    print("Could not launch Google Maps link" + e.toString());
                  }
                  ;
                },
              ),
              ListTile(
                title: Text('Fire Stations'),
                leading: Icon(Icons.fire_extinguisher_outlined),
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
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                  onTap: () {
                    Navigator.of(context).pushNamed("/dashboard", arguments: {
                      'name': "$username",
                      'id': "$username",
                    });
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About us"),
                  onTap: () {
                    Navigator.of(context).pushNamed("/about");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
