import 'package:firstproject/routes.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/controller/listmakanan_controller.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
   ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Makanan') ),
      body:Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
          return InkWell(
            onTap: (){
              Get.toNamed(
              Routes.detail_makanan,
              arguments: makanan,
              );
              //pindah ke detail page
              //menggunakan get
            },
            child: Card(
           elevation: 10,
           child:Container(
            margin: EdgeInsets.all(10),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                Text(makanan.namaMakanan, style: TextStyle(fontSize: 20, )),
                Text("Rp. "+makanan.hargaMakanan,style: TextStyle(fontSize: 20, color: Colors.blue)),
              ]
            )
           ),
           )
          );
        },),
      ),
      
     
      );
  }
}