import 'dart:convert';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_record_2/DB/functions/db_functions.dart';
import 'package:student_record_2/Homescreen.dart';
import 'package:student_record_2/model/data_model.dart';

class AddScreen extends StatefulWidget {
  AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final _namecontroller = TextEditingController();

  final _agecontroller = TextEditingController();

  final _placecontroller = TextEditingController();

  final _phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ADD SCREEN'),
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (() {
                            pickImage();
                          }),
                          child: imageprofile(),
                        ),
                         const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _namecontroller,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'student name'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _agecontroller,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'student age'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _placecontroller,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'student place'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _phonecontroller,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'student phone',
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              onAddstudentClicked();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ScreenHome()));
                            },
                            child: const Text('Submit'))
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }

  Future<void> onAddstudentClicked() async {
    final _name = _namecontroller.text.trim();
    final _age = _agecontroller.text.trim();
    final _place = _placecontroller.text.trim();
    final _phone = _phonecontroller.text.trim();

    if (_name == null || _age == null || _place == null || _phone == null) {
      return;
    } else {
      // print('$_name $_age $_place $_phone');
      final _student =
          StudentModel(name: _name, age: _age, place: _place, phone: _phone);
      addStudent(_student);
    }
  }

  String imageToString = '';
  String _image = '';
  pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    } else {
      final imageTemporary = File(image.path).readAsBytesSync();
      setState(() {
        imageToString = base64Encode(imageTemporary);
        _image = imageToString;
      });
    }
  }

  Widget imageprofile() {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: MemoryImage(const Base64Decoder().convert(_image)),
          ),
          const Positioned(
              bottom: 20,
              right: 20,
              child: Icon(
                Icons.image,
                size: 20,
              ))
        ],
      ),
    );
  }
}
