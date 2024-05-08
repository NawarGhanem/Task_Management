import 'package:flutter/material.dart';
import 'package:student/pages/AIPageSuggesting.dart';
import 'package:student/pages/HardwareSuggesting.dart';
import 'package:student/pages/NetworkSuggesting.dart';

import 'package:student/pages/SearchPage.dart';
import 'package:student/pages/SignIn.dart';
import 'package:student/pages/SoftwareSuggesting.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Image.asset(
            "assets/IUST.png",
            width: 45,
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.blue.shade400,
      ),
      drawer: Drawer(
        
          child: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/IUST.png",
            width: 150,
            height: 150,
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("UserName"),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text("Mail"),
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
          ),
          InkWell(
            onTap: () {
               Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SignIn()));
            },
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log out"),
            ),
          ),
        ],
      )),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                SizedBox(
                  width: 27,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HardwareSuggesting()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue.shade400,
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Icon(Icons.electric_rickshaw_outlined),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Hardware ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AIPAgeSuggesting(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue.shade400,
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Icon(Icons.radio_button_checked_sharp),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "AI ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    height: 150,
                    width: 150,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 27,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SoftwareSuggesting()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue.shade400,
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Icon(Icons.keyboard),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Software ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NetworkSuggesting()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue.shade400,
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Icon(Icons.network_locked_sharp),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Network ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    height: 150,
                    width: 150,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
