
// import 'package:flutter/material.dart';

// import 'package:flutter_student_record/DB/functions/db_functions.dart';
// import 'package:flutter_student_record/Model/data_model.dart';


// class addScreen extends StatelessWidget {
//   addScreen({Key? key}) : super(key: key);
//   final _namecontroller = TextEditingController();
//   final _agecontroller = TextEditingController();
//   final _placecontroller = TextEditingController();
//   final _phonecontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('AddScreen'),
//         ),
//         body: SafeArea(
//           child: LayoutBuilder(
//             builder:
//                 (BuildContext context, BoxConstraints viewportConstraints) {
//               return SingleChildScrollView(
//                 child: ConstrainedBox(
//                   constraints: BoxConstraints(
//                     minHeight: viewportConstraints.maxHeight,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         const CircleAvatar(
//                           radius: 50,
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller: _namecontroller,
//                           keyboardType: TextInputType.text,
//                           decoration: const InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'student name'),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller: _agecontroller,
//                           keyboardType: TextInputType.number,
//                           decoration: const InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'student age'),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller: _placecontroller,
//                           keyboardType: TextInputType.text,
//                           decoration: const InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'student place'),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller: _phonecontroller,
//                           keyboardType: TextInputType.phone,
//                           decoration: const InputDecoration(
//                             border: OutlineInputBorder(),
//                             labelText: 'student phone',
//                           ),
//                         ),
//                         ElevatedButton(
//                             onPressed: () {
//                               onAddstudentClicked();
//                             }, child: const Text('Submit'))
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ));
//   }
//   Future<void>onAddstudentClicked()async{
//     final _name=_namecontroller.text.trim();
//     final _age=_agecontroller.text.trim();
//     final _place=_placecontroller.text.trim();
//     final _phone=_phonecontroller.text.trim();

//     if(_name==null||_age==null||_place==null||_phone==null){
//       return;    }else{
        
//                final _student=StudentModel(name: _name, age: _age, place: _place, phone: _phone);

//         addstudent(_student);
//       }
//   }
//   }

