import 'package:flutter/material.dart';

class oledScreen extends StatefulWidget {
  const oledScreen({super.key});

  @override
  State<oledScreen> createState() => _oledScreenState();
}

class _oledScreenState extends State<oledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
              ),
              Center(
                child: Text(
                  'OLED Controls',
                  style: TextStyle(fontSize: 35.0, color: Color(0xFF28283D)),
                ),
              ),
            ],
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          return SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.04),
                  child: Column(children: [
                   Container(
                     width: 50,
                     height: 50,
                     color: Colors.amberAccent,
                   ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.amberAccent,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.amberAccent,
                    ),

                  ])));
        }));
  }
}
