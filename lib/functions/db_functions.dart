import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_sample/model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

Future<void> addStudent(StudentModel value) async {
  studentListNotifier.value.add(value);
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.add(value);

  studentListNotifier.notifyListeners();
}

Future<void> getAllStudents() async {
  final studentDB = await Hive.openBox<StudentModel>('Student_db');
  studentListNotifier.value.clear();

  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
}
