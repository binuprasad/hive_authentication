



// import 'package:flutter/material.dart';
// import 'package:flutter_student_record/home_screen.dart';
// import 'package:lottie/lottie.dart';

// class ScreenSplash extends StatefulWidget {
//   const ScreenSplash({Key? key}) : super(key: key);

//   @override
//   State<ScreenSplash> createState() => _ScreenSplashState();
// }

// class _ScreenSplashState extends State<ScreenSplash> {
//   @override
//   void initState() {
//    gotologin(context);
//     super.initState();
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 120),
//           child: Lottie.asset('assets/images/79812-happy-student.json'),
//         ),
//       ),
//     );
//   }

//   Future<void>gotologin(BuildContext context)async{
//     await Future.delayed(Duration(seconds: 3));
//     Navigator.pushReplacement((context), MaterialPageRoute(builder:((context) => Screenhome())));
//   }
// }