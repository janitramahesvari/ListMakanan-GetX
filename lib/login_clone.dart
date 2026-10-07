import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Login Clone Page")),
      body: Column(children: [
        Image.network("https://static.freepnglogo.com/images/all_img/google-logo-2025-6ffb.png",width: 100, height: 42),
        SizedBox(height: 15),
        Text("Login", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        SizedBox(height: 15),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
          Text.rich( //wadah
          TextSpan(children:[
          TextSpan(text: "Gunakan Akun Google Anda. Akun akan ditambahkan ke perangkat ini dan tersedia untuk aplikasi Google lainnya.", style: TextStyle(fontSize: 15)),
         TextSpan(text: "\nPelajari lebih lanjut cara menggunakan akun \n Anda", style: TextStyle(fontSize: 15, color: Colors.blue, decoration: TextDecoration.underline)),
          ],
          ),
        textAlign: TextAlign.center,
        ),
          ),
          
      SizedBox(height: 25),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
       child: TextField(
          decoration: InputDecoration(hint: Text("Email atau nomor telepon"), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft, 
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
 Text("Lupa email?", style: TextStyle(fontSize: 15, color: Colors.blue)),
        ),
      ),
       
        SizedBox(height: 35),

         Align(
        alignment: Alignment.centerLeft, 
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
        Text("Buat akun", style: TextStyle(fontSize: 15, color: Colors.blue)),
        ),
      ),


        const Spacer(),

        Padding(padding: const EdgeInsets.only(bottom: 40, right: 20, left: 20),
         child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(onPressed:(){}, child: Text("Berikutnya"), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white)),
        )),
       // ElevatedButton(onPressed:(){}, child: Text("Berikutnya"), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white)),

      ],)
      );
  }
}