
import 'package:flutter/material.dart';
import 'package:ui_designing/first_ui.dart';

main(){
  runApp(const MyAp());
}
class MyAp extends StatelessWidget {
  const MyAp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirstUi(),
    );
  }
}