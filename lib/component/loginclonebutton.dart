import 'package:flutter/material.dart';

class LoginCloneButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LoginCloneButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, right: 20, left: 20),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child:Text(text),
        ),
      ),
    );
  }
}