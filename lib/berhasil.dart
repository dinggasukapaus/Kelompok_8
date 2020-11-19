import 'package:flutter/material.dart';

class Berhasil extends StatefulWidget {
  final String nama;
  //constructor


  Berhasil({Key key, @required this.nama}) : super(key:  key);

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<Berhasil> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Kerja.In',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                  Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Welcome : ${widget.nama}',                    
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              ],
            )));
  }
}
