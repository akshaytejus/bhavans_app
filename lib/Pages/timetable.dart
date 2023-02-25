import 'package:flutter/material.dart';

import '../Models/class_data.dart';

class TimeTable extends StatelessWidget {
  TimeTable({super.key});

  final Map<String, List<ClassData>> classData = {
    "Monday": [
      ClassData(
          className: "INFORMATION SECURITY",
          teacherName: "JKP",
          classLoc: "N5",
          time: "10:40"),
      ClassData(
          className: "BIG DATA ANALYSIS",
          teacherName: "ShR",
          classLoc: "N5",
          time: "11:30"),
      ClassData(
          className: "ADVANCED JAVA PROGRAGMMING",
          teacherName: "GM",
          classLoc: "N5",
          time: "12:40"),
      ClassData(
          className: "PROJECT",
          teacherName: "MA/KVB/JKP/KR/SP",
          classLoc: "N22B",
          time: "01:30")
    ],
    "Tuesday": [
      ClassData(
          className: "LIBRARY",
          teacherName: "NA",
          classLoc: "Lib",
          time: "10:40"),
      ClassData(
          className: "INFORMATION SECURITY",
          teacherName: "JKP",
          classLoc: "N5",
          time: "10:40"),
      ClassData(
          className: "INFORMATION SECURITY",
          teacherName: "JKP",
          classLoc: "N5",
          time: "11:30"),
      ClassData(
          className: "ADVANCED JAVA PROGRAGMMING",
          teacherName: "GM",
          classLoc: "N4",
          time: "01:30"),
    ],
    "Wednesday": [
      ClassData(
          className: "INFORMATION SECURITY",
          teacherName: "JKP",
          classLoc: "N5",
          time: "10:40"),
      ClassData(
          className: "BIG DATA ANALYSIS",
          teacherName: "ShR",
          classLoc: "N4",
          time: "11:30"),
      ClassData(
          className: "ADVANCED JAVA PROGRAGMMING",
          teacherName: "GM",
          classLoc: "N5",
          time: "12:40"),
    ],
    "Thursday": [
      ClassData(
          className: "UG LAB BATCH-1",
          teacherName: "GM",
          classLoc: "N21B",
          time: "12:40"),
      ClassData(
          className: "PROJECT",
          teacherName: "MA/KVB/JKP/KR/SP",
          classLoc: "N22B",
          time: "01:30"),
      ClassData(
          className: "INFORMATION SECURITY",
          teacherName: "JKP",
          classLoc: "N4",
          time: "02:50"),
      ClassData(
          className: "BIG DATA ANALYSIS",
          teacherName: "ShR",
          classLoc: "N4",
          time: "03:40"),
    ],
    "Friday": [
      ClassData(
          className: "UG LAB BATCH-2",
          teacherName: "GM",
          classLoc: "N21B",
          time: "12:40"),
      ClassData(
          className: "BIG DATA ANALYSIS",
          teacherName: "ShR",
          classLoc: "N5",
          time: "01:30"),
      ClassData(
          className: "ADVANCED JAVA PROGRAGMMING",
          teacherName: "GM",
          classLoc: "N4",
          time: "02:50"),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Timetable'),
        ),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: classData.length,
          itemBuilder: (context, index) {
            String key = classData.keys.elementAt(index);
            Card(
              child: Column(
                children: <Widget>[
                  Text(key),

                ],
              ),
            );
          },
        ));
  }
}
