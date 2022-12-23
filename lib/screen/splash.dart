import 'package:flutter/material.dart';
import 'package:flutter_login_page/main.dart';
import 'package:flutter_login_page/screen/home.dart';
import 'package:flutter_login_page/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}


class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkuserlogedin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
            child: Image(
                image: AssetImage(
                    'assets/images/logo-talk-speak-speech-chat-bubble-icon-logo-sign-vector_8169-144.webp'))),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotologin() async {
    await Future.delayed(const Duration(seconds: 3));
// ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => const ScreenLogin()),
    );
  }

  Future<void> checkuserlogedin() async {
    final sharedprefs = await SharedPreferences.getInstance();
    
   
    final userlogedin = sharedprefs.get(saveKeyname);
    if (userlogedin == null || userlogedin == false) {
      gotologin();
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx1) => const Screenhome()));
    }
  }
}
