import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:supervisor/pages/Category.dart';


class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  String? _selectedValue;

  List<String> _dropdownValues = [
    'Informatic Engineering',
    'Computer Engineering ',
    'electronics communications engineering',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      appBar: AppBar(actions: [
         Image.asset(
            "assets/IUST.png",
            width: 50,
          ),
        SizedBox(width: 15,),
      ],
        backgroundColor: Colors.blue.shade400,
       
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Create Account",
              style: TextStyle(
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                  fontSize: 45),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter UserName";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text("UserName"),
                  hintText: "Enter UserName",
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 17),
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
                    return "Please enter UserID";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text("UserID"),
                  hintText: "Enter UserID",
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 17),
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
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text("Password"),
                  hintText: "Enter Password",
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 17),
                  border: OutlineInputBorder(
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
                    hintStyle: TextStyle(color: Colors.black26,fontSize: 17),
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
            SizedBox(
              height: 30,
            ),
                Container(
                width: 260,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Category(),));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),)
                  
                  
                ),
              ),
          ],
        ),
      ),
    );
  }
}
