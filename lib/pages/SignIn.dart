import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:student/pages/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String? _selectedValue;

  List<String> _dropdownValues = [
    'Informatic Engineering',
    'Computer Engineering ',
    'electronics communications engineering',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
         Image.asset(
            "assets/IUST.png",
            width: 50,
          ),
        SizedBox(width: 15,),
      ],
        backgroundColor: Colors.blue.shade400,
       
      ),
      
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter UserID";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: const Text("UserID",style: TextStyle(fontSize: 13),),
                    hintText: "Enter UserID",
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
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: const Text("Password",style: TextStyle(fontSize: 13),),
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: Colors.black26),
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
                height: 50,
              ),
              RichText(
                text: TextSpan(
                    text: "Don\'t have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                    children: [
                      TextSpan(
                          text: " Sign up",
                          style: TextStyle(color: Colors.blueAccent),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUP()));
                            })
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: "OR",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                    children: [
                      TextSpan(
                        text: " Sign in as guest",
                        style: TextStyle(color: Colors.blueAccent),
                      )
                    ],
                    ),
              ),
              SizedBox(height: 20,),
              
               Container(
                width: 260,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Confirm",
                    style: TextStyle(color: Colors.white,fontSize: 17),
                  ),
                  style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),)
                  
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
