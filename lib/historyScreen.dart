import 'package:flutter/material.dart';

class historyScreen extends StatefulWidget {
  const historyScreen({super.key});

  @override
  State<historyScreen> createState() => _historyScreenState();
}

class _historyScreenState extends State<historyScreen> {
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
                    'History',
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
            child: Padding(
              padding:  EdgeInsets.only(top: screenHeight * 0.04),
              child: Column(
                children: [
                  Text("Recording 1",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF28283D)),),
                  SizedBox(height: screenHeight * 0.04),
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
                      ]),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  Text("Recording 2",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF28283D)),),
                  SizedBox(height: screenHeight * 0.04),
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
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
