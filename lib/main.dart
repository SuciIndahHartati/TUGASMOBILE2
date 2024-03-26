import 'package:flutter/material.dart';
import 'package:tugas_mobile_2/model/UserScreen.dart';
import 'package:tugas_mobile_2/model/screen_page_register.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       //home: ScreenPageRegister(),
      home: UserScreen(),
    );
  }
}