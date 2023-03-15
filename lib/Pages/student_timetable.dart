 import 'package:flutter/material.dart';

import '../Models/class_data.dart';

class TimeTable extends StatelessWidget {
  TimeTable({super.key});

  final Map<String, List<ClassData>> classMap = {
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
        itemCount: classMap.length,
        itemBuilder: (context, index) {
          String key = classMap.keys.elementAt(index);
          List<ClassData> value = classMap.values.elementAt(index);
          return Card(
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue, width: 2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    key,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        ClassData classData = value[index];
                        return Card(
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.blue, width: 2)),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  classData.className,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      classData.teacherName,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      classData.classLoc,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      classData.time,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
