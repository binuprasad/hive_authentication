import 'package:flutter/material.dart';
import 'package:ui_designing/secound_ui.dart';

class FirstUi extends StatelessWidget {
  const FirstUi({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const ListTile(
       
        title: Text(
          'Additonal Informations',
          style: TextStyle(color: Colors.white),
        ),
      )),
      
      body: Column(
        children: [
           ListTile(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              title: const Text('Share Dukkan App'),
              trailing: const Icon(Icons.chevron_right_sharp),
        ),
         ListTile(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.try_sms_star_outlined)),
              title: const Text('Change Language'),
              trailing: const Icon(Icons.chevron_right_sharp),
        ),
         ListTile(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.whatsapp)),
              title: const Text('WhatsApp Chat Support'),
              trailing:const Icon(Icons.toggle_on,color: Colors.blue,),
        ),
         ListTile(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.work_outline_outlined)),
              title: const Text('Privacy Policy'),
             
        ),
         ListTile(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.star_border_outlined)),
              title: const Text('Rate Us'),
              
        ),
         ListTile(
          leading:
              IconButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SecondUi()));
              }, icon: const Icon(Icons.exit_to_app)),
              title: const Text('Sign Out'),
              
        ),
       Padding(
         padding: const EdgeInsets.only(top:300),
         child: Column(children: const [Text('Version',style: TextStyle(color: Colors.grey),),
            Text('2.4.2',style: TextStyle(color: Colors.black54),)],),
       )
          
        ],
      )
    );
  }
}
