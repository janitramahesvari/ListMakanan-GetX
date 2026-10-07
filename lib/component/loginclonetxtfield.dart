import 'package:flutter/material.dart';

class Loginclonetxtfield extends StatelessWidget {
final TextEditingController txtController; //nyimpen input
final String myHint;

  const Loginclonetxtfield({
    super.key,
     required this.txtController,
      required this.myHint});

  @override
  Widget build(BuildContext context) {
    return TextField(
       controller: txtController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), //garis tepi di dalam decoration
        hint: Text(myHint)
      ),
    );
  }
}