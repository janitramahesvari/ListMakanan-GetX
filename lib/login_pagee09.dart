import 'package:firstproject/component/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/component_09/custom_button.dart';

class LoginPagee extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPagee> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPagee> {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome to application " + statusLogin,
            style: TextStyle(
              fontSize: 30,
              color: const Color.fromARGB(255, 46, 9, 182),
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: CustomTextfield(
                myHint: "input username",
              txtController: txtUsername,
            ),
          ),
         Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password",
              txtController: txtPassword,
            ),
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                // fungsinya untuk reload / refresh satu page full
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if (username == "admin" && password == "admin") {
                  statusLogin = "admin";
                  print("sukses login");
                } else {
                  statusLogin = "failed";
                  print("gagal login");
                }
              });
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                color: const Color.fromARGB(255, 30, 175, 44),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}