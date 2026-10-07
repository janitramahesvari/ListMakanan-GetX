import 'package:firstproject/kalkulator_page09.dart';
import 'package:firstproject/pages/kalkulator_page1.dart';
import 'package:firstproject/pages/login_clonepage.dart';
import 'package:firstproject/routes.dart';
import 'package:firstproject/pages09/kalkulator_pagee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';
import 'kalkulator_page09.dart';
import 'login_clone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Learning App',
      initialRoute: Routes.list_makanan,
      getPages:Routes.myPages,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: LoginPage(),
      //home: KalkulatorPage(),
      // home: LoginClone(),
      //home: KalkulatorPagee(),
      // home:KalkulatorPage1()
    );
  }
}