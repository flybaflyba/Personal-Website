
import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


class Academic extends StatefulWidget{

  @override
  _AcademicState createState() => _AcademicState();
}

class _AcademicState extends State<Academic>{

  int _currentSortColumn = 0;
  bool _isAscending = true;

  List<Map> courseHistory = List.generate(30, (i) {
    return {"course": "loading", "description": "loading", "term": "loading", "grade" : "loading"};
  });

  void loadCourseHistory() async {
    String courseHistoryText = await rootBundle.loadString('texts/course_history.txt');

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
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: _currentSortColumn,
            sortAscending: _isAscending,
            headingRowColor: MaterialStateProperty.all(Colors.blue[200]),
            columns: [
              DataColumn(
                  label: Text('Course', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  onSort: (columnIndex, _) {
                    sort(columnIndex, 'course');
                  }
              ),
              DataColumn(
                  label: Text('Description', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  onSort: (columnIndex, _) {
                    sort(columnIndex, 'description');
                  }
              ),
              DataColumn(
                  label: Text('Term', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  // Sorting function
                  onSort: (columnIndex, _) {
                    sort(columnIndex, 'term');
                  }
              ),
              DataColumn(
                  label: Text('Grade', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
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
    );
  }
}
