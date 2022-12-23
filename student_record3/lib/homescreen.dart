// import 'package:flutter/material.dart';
// import 'package:flutter_student_record/AddScreen.dart';
// import 'package:flutter_student_record/DB/functions/db_functions.dart';
// import 'package:flutter_student_record/Model/data_model.dart';

// class Screenhome extends StatelessWidget {
//   const Screenhome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     getAllstudents();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('STUDENT LIST'),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.search),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => addScreen()));
//         },
//         label: const Text('Add'),
//         icon: const Icon(Icons.add),
//       ),
      
//       body: SafeArea(
//         child: ValueListenableBuilder(
//           valueListenable: studentListNotifier,
//           builder: (BuildContext ctx, List<StudentModel> studentList,
//               Widget? child) {
//             return ListView.separated(
//               itemCount: studentList.length,
//               separatorBuilder: (ctx, index) {
//                 return const Divider();
//               },
//               itemBuilder: (ctx, index) {
//                 final data = studentList[index];
//                 return ListTile(
//                   title: Text(data.name),
//                   trailing: IconButton(
//                     onPressed: () {
//                        if (data.id != null) {
//                         deleteStudent(data.id!);
//                       } else {
//                         print('student id is null.unable to delete');
//                       }
//                     },
//                     icon:
//                       const Icon(Icons.delete,color: Colors.red),
                    
//                   )
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
