import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.backgroundColor, required this.onPressed});
 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: const Color.fromARGB(255, 245, 246, 247),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}