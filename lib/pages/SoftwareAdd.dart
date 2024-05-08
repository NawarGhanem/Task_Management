import 'package:flutter/material.dart';
import 'package:student/pages/SearchPage.dart';
import 'package:student/pages/SoftwareSuggesting.dart';

class SoftwareAdd extends StatefulWidget {
  const SoftwareAdd({super.key});

  @override
  State<SoftwareAdd> createState() => _SoftwareAddState();
}

class _SoftwareAddState extends State<SoftwareAdd> {
  String? _selectedValue;
  List<String> _dropdownValues = [
   "2",
    "3",
    "4",
    "5",
  ];
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
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 14,
              child: Padding(
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
                      "assets/Software.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SoftwareAdd()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 7, 89, 130),
                        ),
                        child: Center(
                            child: Text(
                          "Add Project",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                        width: double.infinity,
                        height: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SoftwareSuggesting()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 85, 159, 220)),
                        child: Center(
                            child: Text(
                          "Suggesting",
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
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter name of project";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: const Text("Project name"),
                    hintText: "Enter project name",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue.shade400),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  child: TextFormField(
                    maxLines: 5,
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter Description";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text("Description"),
                      hintText: "Enter description",
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(25)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue.shade400),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: "number of student",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue.shade400),
                      ),
                    ),
                    value: _selectedValue,
                    items: _dropdownValues.map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedValue = newValue!;
                      });
                    },
                  )),
            ),
            SizedBox(height: 15),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  maxLines: 2,
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter name of student";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: const Text("students name"),
                    hintText: "Enter students name",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue.shade400),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  maxLines: 1,
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter name of supervisor";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: const Text("supervisor name"),
                    hintText: "Enter supervisor name",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue.shade400),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
