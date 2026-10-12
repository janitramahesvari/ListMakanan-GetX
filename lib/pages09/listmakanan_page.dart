import 'package:firstproject/controllers_09/listmakanan_controller.dart';
import 'package:firstproject/pages09/listmakanan_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:firstproject/routes09.dart';

class ListmakananPage extends StatelessWidget {
   ListmakananPage({super.key});

   final controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];
            return InkWell(
              onTap: () {
                 Get.toNamed(
              Routes09.detail_makanan,
              arguments: makanan,
                // kalau di klik pindah ke detail list makanan
                 );
              },
              child: ListTile(
                title: Text(
                  makanan.namaMakanan,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(makanan.harga, style: TextStyle(fontSize: 15)),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            );
          },
        ),
      ),
    );
  }
}