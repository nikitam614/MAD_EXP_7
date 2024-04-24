import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;

import 'package:mad_pwa_exp/navbar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var username, email, phone;
  void getData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');
    Response response = await get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      setState(() {
        username = jsonResponse['name'];
        email = jsonResponse['email'];
        phone = jsonResponse['phone'];
      });
      print(username);
    } else {
      const SnackBar(
        content: Text("Something went wrong!"),
      );
      username = "";
      email = "";
      phone = "";
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Within Dispose Function");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red.shade900,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Username:",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    "$username" != null
                        ? Text(
                            "$username",
                            style: TextStyle(fontSize: 25),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Email:",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    "$email" != null
                        ? Text(
                            "$email",
                            style: TextStyle(fontSize: 25),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Phone:",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    "$phone" != null
                        ? Expanded(
                            child: Text(
                            "$phone",
                            style: TextStyle(fontSize: 25),
                          ))
                        : Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          )
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red.shade900,
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/dashboard',
                          arguments: {
                            'name': "$username",
                            'id': "$username",
                          });
                    },
                    child: Text("View profile in detail"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
