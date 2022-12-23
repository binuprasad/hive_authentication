
import 'dart:io';

import 'package:camera_app/gallery.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
ValueNotifier<List> capturedImages = ValueNotifier([]);
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 204, 132, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/ee76e6778e7cd05bdd06bf1fbd07dd1f.jpg'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.blue, width: 2),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Gallery(),
                      ),
                    ),
                    icon: const Icon(Icons.photo_size_select_actual_outlined),
                    label: const Text('Picturs'),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.blue, width: 2),
                    ),
                    onPressed: () {
                      camera();
                    },
                    icon: const Icon(Icons.camera_alt_outlined),
                    label: const Text('Camera'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

camera() async {
  final image = await ImagePicker().pickImage(source: ImageSource.camera);
  if (image == null) {
    return;
  } else {
    var directory = await getExternalStorageDirectory();
    File imagePath = File(image.path);
    final picture =
        await imagePath.copy('${directory!.path}/${DateTime.now()}.jpg');
  capturedImages.value.add(picture.path);
    capturedImages.notifyListeners();
                                   }
}

launchDirectory() async {
  final direcotry = await getExternalStorageDirectory();
  if (direcotry != null) {
    var imageList = await direcotry.list().toList();
    for (var i = 0; i < imageList.length; i++) {
      if (imageList[i].path.endsWith('.jpg')) {
        capturedImages.value.add(imageList[i].path);
      }
    }
  }
  capturedImages.notifyListeners();
}
    