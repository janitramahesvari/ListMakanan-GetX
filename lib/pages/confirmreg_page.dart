import 'package:flutter/material.dart';
import 'package:firstproject/controller/confirmreg_ctrl.dart';
import 'package:get/get.dart';

class ConfirmregPage extends StatelessWidget {
  ConfirmregPage({super.key});

  final controller = Get.put(ConfirmregCtrl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama ${controller.nama}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          Text(
            "Jenis Kelamin ${controller.jeniskelamin}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Alamat    ${controller.alamat}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Email   ${controller.email}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "No Wa ${controller.nowa}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.back(); //balik tampilan sebelumnya
            },
            child: Text("Oke"),
          ),
        ],
      ),
    );
  }
}