//package material
import 'package:flutter/material.dart';

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
      //menghapus banner debug
      debugShowCheckedModeBanner: false,
      //properti home
      //properti tampilan untuk materiaApp
      //dan menggunkan widget scafold = TAMPILAN DASAR APLIKASI
      home: Scaffold(
          //properti appbar yang memiliki widget appbar
          appBar: AppBar(
            //didalamnya terdapat properti title dengan
            //widget text
            title: Text('Progres 2'),
          ),
          //properti body yang memiliki
          //widget center -> widget text
          //widget center membuat value dari widget text menjadi di tengah
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('pencari lowongan kerja'),
              ],
            ),
          )),
    );
  }
}
