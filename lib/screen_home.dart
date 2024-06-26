import 'package:flutter/material.dart';
import 'package:hive_sample/addstudent.dart';
import 'package:hive_sample/functions/db_functions.dart';
import 'package:hive_sample/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudent(),
            const Expanded(child: ListStudentWidget()),
          ],
        ),
      ),
    );
  }
}
