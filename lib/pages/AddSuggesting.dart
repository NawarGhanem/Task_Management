import 'package:flutter/material.dart';
import 'package:supervisor/pages/SearchPage.dart';

class AddSuggesting extends StatefulWidget {
  const AddSuggesting({super.key});

  @override
  State<AddSuggesting> createState() => _AddSuggestingState();
}

class _AddSuggestingState extends State<AddSuggesting> {
  @override
  Widget build(BuildContext context) {
     String? _selectedValue;

  List<String> _dropdownValues = [
    'AI',
    'Software ',
    'Hardware',
    'Network',
  ];
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
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Text(
                "Add Suggestion",
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              ),
              SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Title";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text("Title",style: TextStyle(fontSize: 13)),
                  hintText: "Enter Title",
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Description";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text("Description",style: TextStyle(fontSize: 13)),
                  hintText: "Enter Description",
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Techniqes";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text("Techniqes",style: TextStyle(fontSize: 13)),
                  hintText: "Enter Techniqes",
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Languages";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text("Languages",style: TextStyle(fontSize: 13)),
                  hintText: "Enter Languages",
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
            SizedBox(
              height: 20,
            ),
             Padding(
                padding: EdgeInsets.symmetric(horizontal: 19),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: "Select an option",
                    labelStyle: TextStyle(fontSize: 15),
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
                      _selectedValue = newValue;
                    });
                  },
                )),
                SizedBox(height: 30,),
                 Container(
                width: 260,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                   
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),)
                  
                  
                ),
              ),
        ],
      ),
    );
  }
}
