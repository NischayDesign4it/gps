import 'package:flutter/material.dart';
import 'package:gps/otpScreen.dart';
import 'package:gps/alarmScreen.dart';
import 'package:gps/helpScreen.dart';
import 'package:gps/historyScreen.dart';
import 'package:gps/notificationScreen.dart';
import 'package:gps/oledScreen.dart';
import 'package:gps/recordingScreen.dart';
import 'package:gps/settingScreen.dart';
import 'package:gps/signup.dart';

class dashboardScreen extends StatefulWidget {
  const dashboardScreen({Key? key}) : super(key: key);

  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}

class _dashboardScreenState extends State<dashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios),
            //replace with our own icon data.
          ),
          title: Stack(
            children: <Widget>[
              // Container(
              //   width: double.infinity,
              // ),


                 Text(
                    'DASHBOARD',
                    style: TextStyle(fontSize: 35.0, color: Color(0xFF28283D)),
                  ),


            ],
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          return SingleChildScrollView(
            child: Form(
                child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.04),
              child: Column(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => recordingScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 48.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Recording Module",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Divider(
                    thickness: 3,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => alarmScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 48.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Proximity Alarm",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Divider(
                    thickness: 3,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => oledScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "OLED Control",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Divider(
                    thickness: 3,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notificationScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Notification",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Divider(
                    thickness: 3,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => historyScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "History",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Divider(
                    thickness: 3,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => settingScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Settings",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Divider(
                    thickness: 3,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => helpScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Help and Support",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  // Divider(
                  //   thickness: 2,
                  //   color: Colors.grey,
                  //   indent: 20,
                  //   endIndent: 20,
                  // ),
                ],
              ),
            )),
          );
        }));
  }
}
