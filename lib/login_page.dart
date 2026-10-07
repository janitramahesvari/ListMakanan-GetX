import 'package:firstproject/component/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    String statusLogin = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page")),
        body: Column(children: [
          //kita isi textfield username, password, dan button
          Text("Welcome to Application" +statusLogin.toString(),
          style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 121, 247, 125), fontStyle: FontStyle.italic)),

          Container(
            margin: EdgeInsets.all(10),
            child:
            CustomTextfield(txtController: txtUsername, 
            myHint: "Input Username"),
            // TextField(
            //   controller: txtUsername,
            //   decoration: InputDecoration(hint: Text("Input username")),
            //   ),
              ),

          Container(
            child: 
            CustomTextfield(txtController: txtPassword, 
            myHint: "Input Password"),
            // TextField(
            //   controller: txtPassword,
            //   decoration: InputDecoration(hint: Text("Input password")),
            //   obscureText: true,
            //   ),
              ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                   String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if (username == "admin" && password == "admin"){
                  print("sukses login");
                  statusLogin = "admin";
                }else {
                  print("gagal login");
                  statusLogin = "failed";
                }

                });
               
              },
               child: Text("Login")),
              ElevatedButton(onPressed: (){}, child: Text("Register")),
            ],
          ),
        ],
        ),
    );
  }
}