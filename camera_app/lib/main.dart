import 'package:camera_app/home_screen.dart';
import 'package:camera_app/splash_screen.dart';

import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
   
    super.initState();
    launchDirectory();
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Camera App',
      theme: ThemeData(primaryColor:Colors.blue),
      home: const SplashScreen(),
    );
  }
}