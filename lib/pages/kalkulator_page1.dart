import 'package:firstproject/component/custom_textfieldkalkulator.dart';
import 'package:firstproject/component/custom_buttonkalkulator.dart';
import 'package:firstproject/component/custom_tittlekalkulator.dart';
import 'package:firstproject/controller/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorPage1 extends StatelessWidget {
   KalkulatorPage1({super.key});

    final controller = Get.put(KalkulatorController());
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator Page")),
      body: Column(
        children: [
          CustomTittlekalkulator(),
          SizedBox(height: 20),
          CustomTextfieldkalkulator(txtController: txtAngka1, myHint: "input angka 1"),
          SizedBox(height: 20),
          CustomTextfieldkalkulator(txtController: txtAngka2, myHint: "input angka 2"),
          SizedBox(height: 20),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
 CustomButtonkalkulator(
            text:"Tambah",
            backgroundColor: const Color.fromARGB(255, 51, 155, 240),
            onPressed: () {
              // panggil method tambah di controller
              double angka1 = double.parse(txtAngka1.text);
              double angka2 = double.parse(txtAngka2.text);
              controller.tambah(angka1, angka2);
            },
          ),
          CustomButtonkalkulator(
            text:"Kurang",
            backgroundColor: const Color.fromARGB(255, 242, 3, 3),
            onPressed: () {
              // panggil method tambah di controller
              double angka1 = double.parse(txtAngka1.text);
              double angka2 = double.parse(txtAngka2.text);
              controller.kurang(angka1, angka2);
            },
          ),
           CustomButtonkalkulator(
            text:"Kali",
            backgroundColor: const Color.fromARGB(255, 117, 18, 210),
            onPressed: () {
              // panggil method tambah di controller
              double angka1 = double.parse(txtAngka1.text);
              double angka2 = double.parse(txtAngka2.text);
              controller.kali(angka1, angka2);
            },
          ),
           CustomButtonkalkulator(
            text:"Bagi",
            backgroundColor: const Color.fromARGB(255, 33, 243, 75),
            onPressed: () {
              // panggil method tambah di controller
              double angka1 = double.parse(txtAngka1.text);
              double angka2 = double.parse(txtAngka2.text);
              controller.bagi(angka1, angka2);
            },
          ),
         
          ]
         
         ),
         SizedBox(height: 20),
          CustomButtonkalkulator(
            text:"Reset",
            backgroundColor: const Color.fromARGB(255, 255, 7, 176),
            onPressed: () {
             txtAngka1.clear();
             txtAngka2.clear();
             controller.reset(); 
            },
          ),

        SizedBox(height: 20),
          Obx(
            () => Text(
              controller.hasil.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      )
    );
  }
}