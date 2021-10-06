import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // const Button({Key? key}) : super(key: key);
  final String TitleButton;
  Button(this.TitleButton);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        primary: Colors.grey[200],
        onPrimary: Colors.black,
      ),
      child: Text(TitleButton),
      onPressed: () {},
    );
  }
}
