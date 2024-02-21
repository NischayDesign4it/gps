import 'package:flutter/material.dart';


class notificationScreen extends StatefulWidget {
  const notificationScreen({super.key});

  @override
  State<notificationScreen> createState() => _notificationScreenState();
}

class _notificationScreenState extends State<notificationScreen> {
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
                'Notification',
                style: TextStyle(fontSize: 35.0, color: Color(0xFF28283D)),
              ),
            ),
          ],
        ),
      ),
      body: Center(child: Text("WELCOME")),
    );
  }
}
