import 'package:bhavans_app/Pages/faculty_home_page.dart';
import 'package:flutter/material.dart';

class FacultyLogin extends StatelessWidget {
  const FacultyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Card(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Faculty ID",
              hintText: "Enter Your Roll no",
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        const Card(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Phone number",
              hintText: "Enter Your Phone no ",
            ),
            keyboardType: TextInputType.phone,
          ),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Send OTP"),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "OTP",
              hintText: "Enter OTP ",
            ),
            keyboardType: TextInputType.number,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                 Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => FacultyHomePage()
                ),
                (route) => false);
              },
              child: const Text("Login"),
            ),
          ),
      ],
    );
  }
}
