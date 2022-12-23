import 'package:camera/splash_screen.dart';

import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Camera App',
      theme: ThemeData(primaryColor: Colors.blue),
      home: SplashScreen(),
    );
  }
}