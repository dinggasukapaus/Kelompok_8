import 'package:flutter/material.dart';
import 'package:tugas1/register.dart';
import 'package:tugas1/berhasil.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String nUsername, nPassword;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();

  void _alert() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Center(
          child: new Text("username/paswword anda salah"),
        ),
      ),
      actions: [
        FlatButton(
          child: Text('Tutup'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
    // ignore: deprecated_member_use
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Login Kerja.In'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
                key: _formKey,
                child: Column(
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
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        //cek data field nya kosong
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Input Username';
                          }
                          return null;
                        },
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'username',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextFormField(
                        //cek data field nya kosong
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Input Username';
                          }
                          return null;
                        },
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'password',
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      textColor: Colors.red,
                      child: Text('Forgot Password'),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.red,
                          child: Text('Login'),
                          onPressed: () {
                            //cek apakah username = sadli
                            //cek password < 5 : gak bisa login, >5 bisa login
                            nUsername = nameController.text;
                            nPassword = passwordController.text;

                            if (_formKey.currentState.validate()) {
                              if (nUsername != 'sadli' ||
                                  nPassword.length <= 5) {
                                _alert();
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Berhasil(
                                              nama: nUsername,
                                              // variable yang di pass ke page home
                                            )));
                              }
                            }
                          },
                        )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.red,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) {
                                return Register();
                              },
                            ));
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
                  ],
                ))));
  }
}
