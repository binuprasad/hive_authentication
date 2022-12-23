import 'dart:io';

import 'package:camera_app/display.dart';
import 'package:camera_app/home_screen.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery View'),
        actions: const [
          Icon(Icons.ios_share),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Icon(Icons.delete),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.black87,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ValueListenableBuilder(
          valueListenable: capturedImages,
          builder: ((BuildContext context, List data, Widget? child) {
            return GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ),
              itemBuilder: (BuildContext context, index) {
                final String currentPath = data[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                    Displayscreen(imagePath: currentPath),
                      ),
                    );
                  },
                  child: Hero(
                    tag: index,
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: FileImage(
                              File(data[index]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
