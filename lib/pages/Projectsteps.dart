import 'package:flutter/material.dart';

class Project_Progress extends StatefulWidget {
  const Project_Progress({super.key});

  @override
  State<Project_Progress> createState() => _Project_ProgressState();
}

class _Project_ProgressState extends State<Project_Progress> {
  double _currentSliderValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
        title: Text('Slider with Steps'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: 'Step ${_currentSliderValue.toInt() + 1}',
                  activeColor: Colors.blue.shade400,
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Text('Step ${_currentSliderValue.toInt() + 1}'),
            ],
          );
        },
      ),
    );
  }
}