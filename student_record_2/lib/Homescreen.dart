import 'package:flutter/material.dart';
import 'package:student_record_2/AddScreen.dart';
import 'package:student_record_2/DB/functions/db_functions.dart';
import 'package:student_record_2/EditScreen.dart';

import 'package:student_record_2/model/data_model.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllstudents();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.yellow,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddScreen()));
        },
        label: const Text('ADD'),
        icon: const Icon(Icons.add),
      ),
      body: ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder:
            (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
          return ListView.separated(
            itemCount: studentList.length,
            separatorBuilder: (ctx, index) {
              final data = studentList[index];
              return ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Editscreen()));
                },
                title: Text(data.name),
                leading: CircleAvatar(),
                trailing: IconButton(
                    onPressed: () {
                       if (data.id != null) {
                         deleteStudent(data.id!);
                      } else {
                        print('student id is null unable to delete');
                       }
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              );
            },
            itemBuilder: (ctx, index) {
              return const Divider();
            },
          );
        },
      ),
    );
  }
}
