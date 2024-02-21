import 'package:flutter/material.dart';
import 'package:gps/recordingScreen.dart';

class settingScreen extends StatefulWidget {
  const settingScreen({super.key});

  @override
  State<settingScreen> createState() => _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {
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
                  'Settings',
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
              child: Form(
                  child: Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.04),
                      child: Column(
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => recordingScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: screenWidth * 0.1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Profile",
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
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => recordingScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: screenWidth * 0.1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Terms and Privacy",
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
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => recordingScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: screenWidth * 0.1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "FAQs",
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
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => recordingScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: screenWidth * 0.1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Logout",
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
                            // SizedBox(height: 10),
                          ]))));
        }));
  }
}
