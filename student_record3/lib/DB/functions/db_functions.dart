// import 'package:flutter/foundation.dart';
// import 'package:flutter_student_record/Model/data_model.dart';
// import 'package:hive/hive.dart';

// ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

// Future<void> addstudent(StudentModel value) async {
//   final studentDB = await Hive.openBox<StudentModel>('student_db');
//   final id = await studentDB.add(value);
//   value.id = id;
//   studentListNotifier.value.add(value);
//   studentListNotifier.notifyListeners();
// }

// Future<void> getAllstudents() async {
//   final studentDB = await Hive.openBox<StudentModel>('student_db');
//   studentListNotifier.value.clear();
//   studentListNotifier.value.addAll(studentDB.values);

//   studentListNotifier.notifyListeners();
// }

// Future<void> deleteStudent(int id) async {
//   final studentDB = await Hive.openBox<StudentModel>('student_db');
//   await studentDB.delete(id);
//   getAllstudents();
// }
