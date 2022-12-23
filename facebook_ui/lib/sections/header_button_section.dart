import 'package:flutter/material.dart';

class Header_button extends StatelessWidget {
  const Header_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: () {
              print('live button clicked');
            },
            icon: const Icon(
              Icons.video_call,
              color: Colors.red,
            ),
            label: const Text('Live'),
          ),
          const VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          TextButton.icon(
              onPressed: () {
                print('display photo ');
              },
              icon:  const Icon(
                Icons.photo_library,
                color: Colors.green,
              ),
              label: const Text('Photo')),
          const VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          TextButton.icon(
              onPressed: () {
                print('Room button clicked');
              },
              icon: const Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              label: const Text('Room')),
              

            
        ],
      ),
      
    );
  }
}
