import 'package:flutter/material.dart';

import 'package:flutter_login_page/main.dart';
import 'package:flutter_login_page/screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernamecontroller = TextEditingController();

  final _passwordcontroller = TextEditingController();

  bool _dataMatched = true;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _usernamecontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'username',
                  helperText: 'please enter your username',
                  helperStyle: TextStyle(color: Colors.blue),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'value is empty';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordcontroller,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  helperText: 'please enter your password',
                  helperStyle: TextStyle(color: Colors.blue),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'value is empty';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Visibility(
                    visible: !_dataMatched,
                    child: const Text(
                      'Username password doesnot match',
                      style: TextStyle(
                        color: Colors.red,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          checklogin(context);
                        }
                      },
                      icon: const Icon(Icons.check),
                      label: const Text(
                        'login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  void checklogin(BuildContext ctx) async {
    final username = _usernamecontroller.text;
    final password = _passwordcontroller.text;
    if (username == 'binu' && password == '1234') {
      final sharedprefs = await SharedPreferences.getInstance();
      sharedprefs.setBool(saveKeyname, true);

      // ignore: use_build_context_synchronously
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (ctx1) => const Screenhome()),
      );
    } else {
      setState(() {
        _dataMatched = false;
      });
    }
  }
}
