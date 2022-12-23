import 'package:flutter/material.dart';

class Room_section extends StatelessWidget {
  const Room_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(right: 10,left: 10,bottom: 10,top: 10),
          children: [
            OutlinedButton.icon(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          side: BorderSide(color: Colors.red)))),
              onPressed: () {},
              icon: const Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: const Text(
                'Create \n Room',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/0002-shah-rukh-khan.jpg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/aliaabhatt5d7.jpeg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/487126.jpg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/0002-shah-rukh-khan.jpg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/1111696.jpg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/487126.jpg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/0002-shah-rukh-khan.jpg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/0002-shah-rukh-khan.jpg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/0002-shah-rukh-khan.jpg',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
          ],
        ));
  }
}
