import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Container(
          height: 40,
          width: 400,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(color: Colors.white,width: 0)
              ),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.white))
            ),
          ),
        ),
        actions: [
         
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
    );
  }
}
