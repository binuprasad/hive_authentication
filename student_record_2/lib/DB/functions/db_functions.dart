import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:student_record_2/model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);
Future<void> addStudent(StudentModel value) async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  final _id=await studentDB.add(value);
  value.id=_id;
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}

Future<void> getAllstudents() async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
}
Future<void>deleteStudent(int id)async{
   final studentDB = await Hive.openBox<StudentModel>('student_db');
 await  studentDB.delete(id);
 getAllstudents();

}