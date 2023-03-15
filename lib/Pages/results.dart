import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final Map _results = {
    "Subject1": "Marks",
    "Subject2": "Marks",
    "Subject3": "Marks",
    "Subject4": "Marks",
  };

  Results({super.key});

  @override
  Widget build(BuildContext context) {
    String subject;
    String marks;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: ListView.builder(
        itemCount: _results.length,
        itemBuilder: (context, index) {
          subject = _results.keys.elementAt(index);
          marks = _results.keys.elementAt(index);
          return Card(
            child: Text("$subject: $marks"),
          );
        },
      ),
    );
  }
}
