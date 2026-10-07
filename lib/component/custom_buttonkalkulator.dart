import 'package:flutter/material.dart';

class CustomButtonkalkulator extends StatelessWidget {
   final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const CustomButtonkalkulator({super.key, required this.text, required this.backgroundColor, required this.onPressed});
 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}