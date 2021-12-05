// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomContactButton extends StatelessWidget {

  final String buttonText;
  final IconData buttonIcon;
  final VoidCallback onPressed;

  const CustomContactButton({
    Key? key, 
    required this.buttonText, 
    required this.buttonIcon, 
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed, 
      icon: Icon(buttonIcon, size: 18,color: Colors.white,), 
      label: Text(buttonText, style: TextStyle(
        color: Colors.white, 
        fontSize: 12, 
        fontWeight: 
        FontWeight.bold
      ),
    ),
      style: TextButton.styleFrom(
        textStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.pinkAccent[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
    );
  }
}
