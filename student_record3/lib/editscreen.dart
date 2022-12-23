import 'package:flutter/material.dart';

class Editscreen extends StatelessWidget {
  const Editscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CircleAvatar(
            radius: 50,
          ),
          TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(border: OutlineInputBorder())),
          TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder())),
          TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(border: OutlineInputBorder())),
          TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(border: OutlineInputBorder())),
          ElevatedButton(onPressed: () {}, child: const Text('SAVE'))
        ],
      ),
    );
  }
}
