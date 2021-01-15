//package material
import 'package:flutter/material.dart';
import 'views/login.dart';

//fungsi yang di jalankan pertamakali
void main() {
  //menjalankan method runApp yang di dalamnya
  //terdapat class yang di jalankan method runApp
  runApp(new MyApp());
}

//class myapp yang merupakan turunan dari stlwidget
class MyApp extends StatelessWidget {
  //yang harus di override class turunannya
  @override
  //method build dari stlwidget
  //method akan mengembalikan sebuah widget
  //yang merupakan tampilan dari stlwidget
  Widget build(BuildContext context) {
    //mengembalikan materiap yang berisi data2 material design
    return MaterialApp(
      home: LoginPage(),

      //menghapus banner debug
      debugShowCheckedModeBanner: false,
    );
  }
}
