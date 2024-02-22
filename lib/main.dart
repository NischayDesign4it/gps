import 'package:flutter/material.dart';
import 'package:gps/alarmScreen.dart';
import 'package:gps/dashboard.dart';
import 'package:gps/helpScreen.dart';
import 'package:gps/historyScreen.dart';
import 'package:gps/loginpage.dart';
import 'package:gps/notificationScreen.dart';
import 'package:gps/oledScreen.dart';
import 'otpScreen.dart';

void main() {
  runApp(MainGPS());
}

class MainGPS extends StatelessWidget {
  const MainGPS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'GPS-RTK',


      home: loginpage(),
    );
  }
}
