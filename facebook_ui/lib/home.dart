import 'package:facebook_ui/sections/header_button_section.dart';
import 'package:facebook_ui/sections/room_section.dart';
import 'package:facebook_ui/sections/status.dart';
import 'package:facebook_ui/widgets/stories_card.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/appbar_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, 
                fontSize: 27,
                 fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: 
                  BoxShape.circle),
            child: IconButton
            (onPressed: (){
              print('Goto search screen');
            },
             icon: const Icon(Icons.search,
             color: Colors.black,
             size: 24,
             ),
             ), 
            
             ),
          ],
        ),
        body: ListView(children:  [
          const Status(),
          const Divider(thickness: 1,color: Colors.grey,),
          const Header_button(),
          Divider(thickness: 10,color: Colors.grey[300],),
          Room_section(),
          Divider(thickness: 10,color: Colors.grey[300],),
          stories(),
        ],),
      ),
    );
  }
}
