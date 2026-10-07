import 'package:flutter/material.dart';

class Loginclonejudul extends StatelessWidget {
  final String text;
  const Loginclonejudul({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}

//dibuat dari 1 class dijadiin penghubung reusable disini
