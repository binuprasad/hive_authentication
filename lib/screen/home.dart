import 'package:flutter/material.dart';
import 'package:flutter_login_page/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('CHATS'),
        actions: [
          IconButton(
            onPressed: () {
              signout(context);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child:const Icon(Icons.message),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text('New group'),
            ),
            ListTile(
              title: Text('New Broadcast'),
            ),
            ListTile(
              title: Text('Linked Devices'),
            ),
            ListTile(
              title: Text('Starred messages'),
            ),
            ListTile(
              title: Text('Payments'),
            ),
            ListTile(
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SafeArea( 
        child: ListView.separated(
          itemCount: 20,
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemBuilder: (BuildContext ctx, index) {
            return ListTile(
              title: Text('PERSON $index'),
              subtitle: Text('Message $index'),
              leading: index.isEven
                  ? const CircleAvatar(
                    radius: 35,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1V3C3qx89X6hSQZUNhi0QDhNWki6gD6B7Qg&usqp=CAU'),
                    )
                  : ClipRRect(
                      child: Image.network(
                          'https://pixinvent.com/demo/vuexy-html-bootstrap-admin-template/app-assets/images/profile/user-uploads/user-03.jpg'),
                    ),
              trailing: Text('1$index:00 PM'),
            );
          },
        ),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final sharedprefs = await SharedPreferences.getInstance();
    await sharedprefs.clear();

    // ignore: use_build_context_synchronously
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => const ScreenLogin()),
        (route) => false);
  }
}
