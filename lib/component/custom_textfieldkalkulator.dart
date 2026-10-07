import 'package:flutter/material.dart';

class CustomTextfieldkalkulator extends StatelessWidget {
  //list variable yang diperlukan 
  final TextEditingController txtController;
  final String myHint;

  const CustomTextfieldkalkulator({super.key, required this.txtController, required this.myHint});

  @override
  Widget build(BuildContext context) {
    return TextField(
       controller: txtController,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: myHint,
      )
    );
  }
}