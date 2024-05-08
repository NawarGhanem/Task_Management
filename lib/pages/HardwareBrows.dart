import 'package:flutter/material.dart';
import 'package:supervisor/pages/HardwareSuggesting.dart';

import 'package:supervisor/pages/SearchPage.dart';

class Details {
  String? title;
  String? Description;
  int? numberOfStudent;
  String? SuperVisor;
  Details(
      {this.title, this.Description, this.numberOfStudent, this.SuperVisor});
}

class HardwareBrows extends StatefulWidget {
  const HardwareBrows({super.key});

  @override
  State<HardwareBrows> createState() => _HardwareBrowsState();
}

class _HardwareBrowsState extends State<HardwareBrows> {
  List<Details> Detailes = [
    Details(
        title: "Taskmanagment",
        Description: "....",
        numberOfStudent: 2,
        SuperVisor: "Dr Taj"),
    Details(
        title: "E Commerce",
        Description: "....",
        numberOfStudent: 2,
        SuperVisor: "Dr Taj"),
    Details(
        title: "Arduino uno",
        Description: "....",
        numberOfStudent: 2,
        SuperVisor: "Dr Taj"),
    Details(
        title: "MobileAPP",
        Description: "....",
        numberOfStudent: 2,
        SuperVisor: "Dr Taj"),
    Details(
        title: "Face Detector",
        Description: "....",
        numberOfStudent: 2,
        SuperVisor: "Dr Taj"),
    Details(
        title: "chat with bot",
        Description: "....",
        numberOfStudent: 2,
        SuperVisor: "Dr Taj"),
    Details(
        title: "Smart Hourse",
        Description: "....",
        numberOfStudent: 2,
        SuperVisor: "Dr Taj"),
  ];
  void _showDialogsearch(BuildContext context, Details details) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(details.title!),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description: ${details.Description}"),
                SizedBox(height: 8),
                Text("Number of Students: ${details.numberOfStudent}"),
                SizedBox(height: 8),
                Text("Supervisor: ${details.SuperVisor}"),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"))
            ],
          );
        });
  }

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
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/Hardware.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 7, 89, 130),
                ),
                child: Center(
                    child: Text(
                  "Browse",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
                width: double.infinity,
                height: 50,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: InkWell(onTap: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HardwareSuggesting()));
              },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 85, 159, 220),
                  ),
                  child: Center(
                      child: Text(
                    "Suggestions",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                  width: double.infinity,
                  height: 50,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: Detailes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Card(
                  child: ListTile(
                    trailing: InkWell(
                      onTap: () {
                        _showDialogsearch(context, Detailes[index]);
                      },
                      child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 117, 137, 202),
                              borderRadius: BorderRadius.circular(25)),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                    tileColor: Color.fromARGB(255, 113, 170, 220),
                    subtitle: Text(
                      Detailes[index].SuperVisor.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    title: Text(
                      Detailes[index].title.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
