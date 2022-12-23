import 'dart:ui';

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(
            'assets/images/0002-shah-rukh-khan.jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          )),
          title: TextFormField(
            decoration: const InputDecoration(
              hintText: 'what is in your mind?',
              hintStyle: TextStyle(color: Colors.black),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder:InputBorder.none,
            ),
          ),
    );
  }
}
