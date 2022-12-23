// import 'package:flutter/material.dart';
// import 'package:flutter_student_record/Model/data_model.dart';
// import 'package:flutter_student_record/splash_screen.dart';
// import 'package:hive_flutter/adapters.dart';

// Future <void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter();
// if(  !Hive.isAdapterRegistered(StudentModelAdapter().typeId)){
// Hive.registerAdapter(StudentModelAdapter());
// }
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ScreenSplash(),
//     );
//   }
// }

