import 'dart:io';

import 'package:flutter/material.dart';

class Displayscreen extends StatelessWidget {
   final String imagePath;
   const Displayscreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final File imgpath = File(imagePath);
    final String imageName = imagePath.split('/').last;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(imageName),
      ),
      body: Center(
        child: Hero(
          tag: imagePath,
          child: Image.file(imgpath),
        ),
      ),
    );
  }
}