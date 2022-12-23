import 'package:flutter/material.dart';

class stories extends StatelessWidget {
  const stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      child: Card(
        color: Colors.amber,
        child: Column(
          children: [
            const ListTile(
              title: Text('Border Radius'),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
