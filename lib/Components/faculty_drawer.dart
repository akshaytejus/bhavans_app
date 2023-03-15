import 'package:flutter/material.dart';

import '../Pages/contact_us.dart';

class FacultyDrawer extends StatelessWidget {
  const FacultyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(Icons.account_circle_rounded),
                  Text(
                    "Akshay Tejus",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Text("Roll No: 10722086039")
            ],
          ),
        ),
        Column(
          children: [
            ListTile(
              title: const Text('TimeTable'),
              onTap: () {
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: const Text('Contact Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContactUs()),
                  );
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}