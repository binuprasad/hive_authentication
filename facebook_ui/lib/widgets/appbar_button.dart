import 'package:flutter/material.dart';


class appBarButton extends StatelessWidget {
 
  const appBarButton({Key? key, required this.ButtonIcon, required this.buttonAction})
      : super(key: key);

  final IconData ButtonIcon;


  final void Function() buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          ButtonIcon,
          color: Colors.black,
          size: 24,
        ),
      ),
    );
  }
}
