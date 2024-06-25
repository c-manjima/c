import 'package:flutter/material.dart';
import 'package:hive_sample/functions/db_functions.dart';
import 'package:hive_sample/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder:
          (BuildContext ctx, List<StudentModel> studentlist, Widget? child) {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            final data = studentlist[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: studentlist.length,
        );
      },
    );
  }
}
