import 'package:flutter/material.dart';

import '../Models/student_data.dart';
import '../Models/class_data.dart';


class StudentClasses extends StatelessWidget {
  final List<ClassData> _classData = [
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
        className: "BIG DATA ANALYSIS",
        teacherName: "ShR",
        classLoc: "N5",
        time: "12:40"),
    ClassData(
        className: "ADV JAVA PROGRAGMMING",
        teacherName: "GM",
        classLoc: "N5",
        time: "01:30")
  ];

  final List<StudentData> _studentData = [
    StudentData(percentage: "70 %"),
    StudentData(percentage: "75 %"),
    StudentData(percentage: "80 %"),
    StudentData(percentage: "85 %")
  ];

  StudentClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int index = 0; index < _classData.length; index++)
          Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  )),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    _studentData[index].percentage,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _classData[index].className,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      _classData[index].teacherName,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      _classData[index].classLoc,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
      ],
    );
  }
}
