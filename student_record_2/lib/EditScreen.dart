import 'package:flutter/material.dart';

class Editscreen extends StatelessWidget {
  const Editscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                ),
                const SizedBox(height: 20,),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(border: OutlineInputBorder())),
                    const SizedBox(height: 20,),
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(border: OutlineInputBorder())),
                     const SizedBox(height: 20,),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(border: OutlineInputBorder())),
                     const SizedBox(height: 20,),
                TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(border: OutlineInputBorder())),
                     const SizedBox(height: 20,),
                ElevatedButton(onPressed: () {}, child: const Text('SAVE'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
