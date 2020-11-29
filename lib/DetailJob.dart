import 'package:flutter/material.dart';

class DetailJob extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<DetailJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kerja.In'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Kerja.in',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'It Development',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Jl Karimata Jember',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'IDR 7.000.000 - 12.000.000',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    )),
                Container(
                    padding: EdgeInsets.all(1),
                    child: Text(
                      'Deskripsi Pekerjaan',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    )),
                Text(
                    "1. Candidate must possess at least Bachelor's Degree in Engineering",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 20)),
                Text("2. Required language(s): English",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 20)),
                Text(
                    "3. At least 5 Year(s) of working experience in the related field is required for this position.",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 20)),
                Text(
                    "4. Required Skill(s): database (PostgreSql; MySql; MsSql);, web programming (php Larafel; J query; JS; Phyton; C#);, mobile programming (Java; Kotlin);, system installation, configuration, analysis on computer software and hardware, including servers and systems,",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 20)),
                Text(
                    "5. Preferably Supervisor/Coordinator specialized in IT/Computer - Network/System/Database Admin or equivalent.",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 20)),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.red,
                        child: Text('Lamar Pekerjaan'),
                        onPressed: () {})),
              ],
            )));
  }
}
