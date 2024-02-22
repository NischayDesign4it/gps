import 'package:flutter/material.dart';

class recordingScreen extends StatefulWidget {
  const recordingScreen({super.key});

  @override
  State<recordingScreen> createState() => _recordingScreenState();
}

class _recordingScreenState extends State<recordingScreen> {
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
                  'Recording Module',
                  style: TextStyle(fontSize: 35.0, color: Color(0xFF28283D)),
              ),
            ],
          ),
        ),

        body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          return SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.59, top: screenHeight * 0.040),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => otpScreen())
                    // );
                  },
                  child: Container(
                    child: Text(
                      'Map View',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF28283D),
                    padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02,
                        horizontal: screenWidth * 0.05),
                    textStyle: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(columns: [
                    DataColumn(
                      label: Text('No.'),
                    ),
                    DataColumn(
                      label: Text('LATITUDE'),
                    ),
                    DataColumn(
                      label: Text('LONGITUDE'),
                    ),
                    DataColumn(
                      label: Text('TIMESTAMP'),
                    ),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('2º29' 'E')),
                      DataCell(Text('2º28' 'E')),
                      DataCell(Text('2023‐09‐25 17:45:30')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Text('23º49' 'W')),
                      DataCell(Text('43º49' 'W')),
                      DataCell(Text('2023‐09‐25 17:45:30')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('3')),
                      DataCell(Text('21º789' 'E')),
                      DataCell(Text('67º655' 'N')),
                      DataCell(Text('2023‐09‐25 17:45:30')),
                    ]),
                  ]),
                ),
              ),
            ]),
          );
        }));
  }
}
