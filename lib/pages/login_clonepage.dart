import 'package:firstproject/component/loginclonebutton.dart';
import 'package:firstproject/component/loginclonejudul.dart';
import 'package:firstproject/component/loginclonelogo.dart';
import 'package:firstproject/component/loginclonetxtfield.dart';
import 'package:firstproject/component/loginclonetxtlink.dart';
import 'package:firstproject/component/loginclonetxtrichspan.dart';
import 'package:flutter/material.dart';

class LoginClonePage extends StatelessWidget {

  const LoginClonePage ({super.key});


  @override
  Widget build(BuildContext context) {
    
 TextEditingController txtEmailorPhone = TextEditingController();

     return Scaffold(
      appBar: AppBar( title: Text("Login Clone Page")),
      body: Column(children: [
       Loginclonelogo(imagelogo:'asset/googlelogo.webp'),

        SizedBox(height: 15),

        
        Loginclonejudul(text:"login"),
         //dibuat di 1 class yg bisa dipanggil di 1 halaman
        Loginclonetxtrichspan (textspan1:  "Gunakan Akun Google Anda. Akun akan ditambahkan ke perangkat ini dan tersedia untuk aplikasi Google lainnya.",
        textspan2:  "\nPelajari lebih lanjut cara menggunakan akun \n anda"),
          
      SizedBox(height: 25),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
       child: 
       Loginclonetxtfield(txtController: txtEmailorPhone, myHint: "Email atau Nomor Telepon")
      ),

      Loginclonetxtlink(text: "Lupa Email", onTap: (){}),
       
        SizedBox(height: 35),

        Loginclonetxtlink(text: "Buat Akun", onTap: (){}),

        const Spacer(),

       LoginCloneButton(text: "Berikutnya", onPressed: (){})
       // ElevatedButton(onPressed:(){}, child: Text("Berikutnya"), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white)),

      ],)
      );
  }
}