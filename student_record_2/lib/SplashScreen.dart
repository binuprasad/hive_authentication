import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:student_record_2/Homescreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    gotoLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Lottie.asset('asset/image/102587-student.json'),
      )),
    );
  }

  Future<void> gotoLogin(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement((context),
        MaterialPageRoute(builder: ((builder) => const ScreenHome())));
  }
}
