import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GallaryScreen extends StatefulWidget {
  const GallaryScreen({Key? key}) : super(key: key);

  @override
  State<GallaryScreen> createState() => _GallaryScreenState();
}

class _GallaryScreenState extends State<GallaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Container(
                  color: Colors.amber,
                ),
              ),
            );
          },
          itemCount: 4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          picker();
        },
        child: const Icon(Icons.photo_camera),
      ),
    );
  }

  picker() async {
    ImagePicker().pickImage(source: ImageSource.camera);
  }
}
