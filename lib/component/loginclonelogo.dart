import 'package:flutter/material.dart';

class Loginclonelogo extends StatelessWidget {
  final String imagelogo;

  const Loginclonelogo ({super.key, required this.imagelogo});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(imagelogo,
    width: 100, 
      height: 42);
      
  }
}