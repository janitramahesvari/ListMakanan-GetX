import 'package:firstproject/component/custom_textfield.dart';
import 'package:firstproject/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final RxString selectedJenisKelamin = "Laki-laki".obs;
  final List<String> listJenisKelamin = ["Laki-laki", "Perempuan"];

 TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Registration Page")),
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextfield(txtController: txtNama, myHint: "input name"),
            const SizedBox(height: 15),
            CustomTextfield(txtController: txtAlamat, myHint: "input alamat  "),
            const SizedBox(height: 15),
            CustomTextfield(txtController: txtEmail, myHint: "input email"),
            const SizedBox(height: 15),
            CustomTextfield(txtController: txtNoWa, myHint: "input no wa"),
            const SizedBox(height: 15),

            Obx(
              () => DropdownButtonFormField<String>(
                value: selectedJenisKelamin.value,
                items: listJenisKelamin.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  if (newValue != null) {
                    selectedJenisKelamin.value = newValue;
                  }
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // get to untuk pindah
                // argument untuk kirim data
                // get off
                Get.toNamed(
                  Routes.confirm_regristation,
                  arguments: {
                    'name': txtNama.text.toString(),
                    'alamat': txtAlamat.text.toString(),
                    'email': txtEmail.text.toString(),
                    'nowa': txtNoWa.text.toString(),
                    'jenis_kelamin': selectedJenisKelamin.value,

                    // dari widget kalian,
                    // dll
                  },
                );
              },
              child: Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}