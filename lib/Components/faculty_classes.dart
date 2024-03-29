import 'package:bhavans_app/Components/attendence_management.dart';
import 'package:flutter/material.dart';

class FacultyClasses extends StatelessWidget {
  const FacultyClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AttendenceManagement()),
                );
          },
          child: Card(
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
                    child: const Text(
                      "Classname",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "time",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Loc",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
        ),
      ],
    );
  }
}