import 'package:bhavans_app/Components/faculty_classes.dart';
import 'package:flutter/material.dart';

import '../Pages/notification_screen.dart';
import '../Components/faculty_drawer.dart';

class FacultyHomePage extends StatelessWidget {
  FacultyHomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const Drawer(
          child: FacultyDrawer(),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.clear_all_rounded,
                ),
                onPressed: () {
                  if (scaffoldKey.currentState!.isDrawerOpen) {
                    scaffoldKey.currentState!.closeDrawer();
                  } else {
                    scaffoldKey.currentState!.openDrawer();
                  }
                },
              );
            },
          ),
          title: const Text("Bhavans App"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notifications_none_rounded,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()),
                );
              },
            )
          ],
          automaticallyImplyLeading: false,
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: const <Widget>[
            FacultyClasses(),
          ],
        ));
  }
}
