import 'package:bhavans_app/Components/faculty_login.dart';
import 'package:bhavans_app/Components/student_login.dart';
import 'package:flutter/material.dart';

class LoginField extends StatefulWidget {
  final String textHolder = "Roll No";

  const LoginField({super.key});

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  bool _isbool = true;

  changeFaculty() {
    setState(() {
      _isbool = false;
    });
  }

  changeStudent() {
    setState(() {
      _isbool = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            TextButton(
              onPressed: () {
                changeStudent();
              },
              child: const Text("Student"),
            ),
            TextButton(
              onPressed: () {
                changeFaculty();
              },
              child: const Text("Teacher"),
            )
          ],
        ),
        _isbool ? const StudentLogin() : const FacultyLogin(),
      ],
    );
  }
}
