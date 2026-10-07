import 'package:firstproject/component_09/custom_textfield.dart';
import 'package:firstproject/component_09/custom_button.dart';
import 'package:firstproject/controllers_09/kalkulator_controllerr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorPagee extends StatelessWidget {
  KalkulatorPagee({super.key});

  final controller = Get.put(KalkulatorControllerr());

  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  // Mengecek apakah input kosong
  bool cekInput() {
    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
      Get.snackbar(
        "Warning",
        "Angka 1 dan Angka 2 harus diisi",
      );
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my Kalkulator"),
      ),

      body: Column(
        children: [
          // Input angka 1
          CustomTextfield(
            myHint: "Input angka 1",
            txtController: txtangka1,
          ),

          // Input angka 2
          CustomTextfield(
            myHint: "Input angka 2",
            txtController: txtangka2,
          ),

          // Tombol tambah
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              if (!cekInput()) return;

              controller.tambah(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
            child: const Text("Tambah"),
          ),

          // Tombol kurang
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              if (!cekInput()) return;

              controller.kurang(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
            child: const Text("Kurang"),
          ),

          // Tombol kali
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {
              if (!cekInput()) return;

              controller.kali(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
            child: const Text("Kali"),
          ),

          // Tombol bagi
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            onPressed: () {
              if (!cekInput()) return;

              controller.bagi(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
            child: const Text("Bagi"),
          ),

          const SizedBox(height: 20),

          // Menampilkan hasil
          Obx(
            () => Text(
              "Hasil: ${controller.hasilHitung.value}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
