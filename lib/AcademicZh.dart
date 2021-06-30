
import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:personalwebsite/Universals.dart';


class AcademicZh extends StatefulWidget{

  @override
  _AcademicZhState createState() => _AcademicZhState();
}

class _AcademicZhState extends State<AcademicZh>{

  int _currentSortColumn = 0;
  bool _isAscending = true;

  List<Map> courseHistory = List.generate(30, (i) {
    return {"course": "载入中", "description": "载入中", "term": "载入中", "载入中" : "载入中"};
  });

  void loadCourseHistory() async {
    String courseHistoryText = await rootBundle.loadString('texts/course_history_zh.txt');

    List<String> courseHistoryList= courseHistoryText.split('\n');

    courseHistory = List.generate((courseHistoryList.length / 4).toInt(), (index) =>
    {
      "course": courseHistoryList[index * 4],
      "description": courseHistoryList[index * 4 + 1],
      "term": courseHistoryList[index * 4 + 2],
      "grade" : courseHistoryList[index * 4 + 3],
    },
    );

    setState(() {
      courseHistory.reversed;
    });
    // print(course_history.length);

  }

  void sort(int columnIndex, String by) {
    setState(() {
      _currentSortColumn = columnIndex;
      if (_isAscending == true) {
        _isAscending = false;
        courseHistory.sort((courseA, courseB) =>
            courseB[by].compareTo(courseA[by]));
      } else {
        _isAscending = true;
        courseHistory.sort((courseA, courseB) =>
            courseA[by].compareTo(courseB[by]));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    loadCourseHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.all(20),
              child: Center(
                child: RichText(
                    text: TextSpan(
                      children: [clickableTextSpan('杨百翰大学夏威夷分校', 'https://www.byuh.edu/', context),],
                      style: TextStyle(fontWeight: FontWeight.bold, ),
                    )
                ),
              )
          ),

          LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minWidth: constraints.minWidth),
                        child: DataTable(
                          sortColumnIndex: _currentSortColumn,
                          sortAscending: _isAscending,
                          headingRowColor: MaterialStateProperty.all(Colors.blue[200]),
                          columns: [
                            DataColumn(
                                label: Text('课程', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                                onSort: (columnIndex, _) {
                                  sort(columnIndex, 'course');
                                }
                            ),
                            DataColumn(
                                label: Text('课程描述', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                                onSort: (columnIndex, _) {
                                  sort(columnIndex, 'description');
                                }
                            ),
                            DataColumn(
                                label: Text('学期', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                                // Sorting function
                                onSort: (columnIndex, _) {
                                  sort(columnIndex, 'term');
                                }
                            ),
                            DataColumn(
                                label: Text('得分', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                                // Sorting function
                                onSort: (columnIndex, _) {
                                  sort(columnIndex, 'grade');
                                }
                            ),
                          ],
                          rows: courseHistory.map((item) {
                            return DataRow(cells: [
                              DataCell(Text(item['course'].toString())),
                              DataCell(Text(item['description'].toString())),
                              DataCell(Text(item['term'].toString())),
                              DataCell(Text(item['grade'].toString()))
                            ]);
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
