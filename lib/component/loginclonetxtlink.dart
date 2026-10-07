import 'package:flutter/material.dart';

class Loginclonetxtlink extends StatelessWidget {
  final String text; //tulisan
  final VoidCallback onTap; //aksi diklik
  
  const Loginclonetxtlink({
    super.key, 
    required this.text,
     required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align (
      alignment:  Alignment.centerLeft, 
      child: GestureDetector( onTap:onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
        Text(text, 
        style: TextStyle(fontSize: 15, color: Colors.blue),),
    ),
     )
    );
  }
}