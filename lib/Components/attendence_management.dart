import 'package:flutter/material.dart';

class AttendenceManagement extends StatefulWidget {
  const AttendenceManagement({super.key});

  @override
  State<AttendenceManagement> createState() => _AttendenceManagementState();
}

class _AttendenceManagementState extends State<AttendenceManagement> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  const Text("Student name:"),
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
