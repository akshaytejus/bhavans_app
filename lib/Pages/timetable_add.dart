import 'package:flutter/material.dart';

class TimetableAdd extends StatefulWidget {
  const TimetableAdd({super.key});

  @override
  _TimetableAddState createState() => _TimetableAddState();
}

class _TimetableAddState extends State<TimetableAdd> {
  final List<DataRow> _rows = [];

  final TextEditingController _classNameController = TextEditingController();
  final TextEditingController _teacherNameController = TextEditingController();
  final TextEditingController _locController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timetable'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DataTable(
              columns: const [
                DataColumn(label: Text('ClassName')),
                DataColumn(label: Text('TeacherName')),
                DataColumn(label: Text('Location')),
                DataColumn(label: Text('Time'))
              ],
              rows: _rows,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _classNameController,
              decoration: const InputDecoration(labelText: 'Class name'),
            ),
            TextField(
              controller: _teacherNameController,
              decoration: const InputDecoration(labelText: 'Teacher name'),
            ),
            TextField(
              controller: _locController,
              decoration: const InputDecoration(labelText: 'Location'),
            ),
            TextField(
              controller: _timeController,
              decoration: const InputDecoration(labelText: 'Time'),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Submit")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        final newRow = DataRow(
                          cells: [
                            DataCell(Text(_classNameController.text)),
                            DataCell(Text(_teacherNameController.text)),
                            DataCell(Text(_locController.text)),
                            DataCell(Text(_timeController.text)),
                          ],
                        );
                        _rows.add(newRow);
                        _classNameController.clear();
                        _teacherNameController.clear();
                        _locController.clear();
                        _timeController.clear();
                      });
                    },
                    child: const Text('Add'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
