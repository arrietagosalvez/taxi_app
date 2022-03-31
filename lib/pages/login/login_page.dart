import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import  'package:radio_taxi/utils/colors.dart' as utils;


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _bannerUp(),
          SizedBox(height: 20),
          _textDescription(),
          _textLogin(),
          SizedBox(height: 15),
          _textFieldEmail(),
          SizedBox(height: 30),
          _textFieldPassword(),
          _buttonLogin(),
          SizedBox(height: 20),
          _textNuevoRegistro()

    ]
        )
      );
  }

  Widget _textDescription(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
      child: Text(
          'ingresa tus datos de:',
          style: TextStyle(
            color: Colors.black54,
            fontFamily: 'TypeKeys',
            fontSize: 40
          ),
      ),
    );
  }

  Widget _textLogin(){
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'login',
        style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
          fontSize: 19
        ),
      ),
    );
  }
  Widget _textFieldEmail(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
          style: TextStyle(fontFamily: 'Report', fontSize: 35, fontWeight: FontWeight.w300),
          decoration: InputDecoration(
          hintText: 'usuario@dominio.com',
          labelText: 'Email',
          suffixIcon: Icon(Icons.email_outlined)
        ),
      ),
    );
  }

  Widget _textFieldPassword(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        style: TextStyle(fontFamily: 'Report', fontSize: 35, fontWeight: FontWeight.w300),
        obscureText: true,
        decoration: InputDecoration(
            hintText: '***********',
            labelText: 'Password',
            suffixIcon: Icon(Icons.lock_outline)
        ),
      ),
    );
  }

  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 100),
      child: RaisedButton(
          onPressed: (){},
          child: Text('Iniciar Secion', style: TextStyle(color: Colors.white),),
          color: utils.Colors.colorRed,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))

      ),
    );
  }

  Widget _textNuevoRegistro(){
      return Container(
        child: Text('Usuario Nuevo',
        style: TextStyle(fontFamily: 'Report', fontSize: 27, fontWeight: FontWeight.bold
        )
        ),
      );
  }

  Widget _bannerUp(){
    return ClipPath(
        clipper: WaveClipperOne(flip: true),
        child: Container(
          color: utils.Colors.colorGreen,
          height: MediaQuery.of(context).size.height *0.30,
          child: ( Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text('Taxi App',
                    style: TextStyle(
                        fontFamily: 'Report',
                        fontSize: 44,
                        fontWeight:
                        FontWeight.w700,
                        color: Colors.amberAccent
                    )
                ),
                Image.asset('assets/img/logo.png', width: 150, height: 100),
              ]
          )
          ),
        )
    );
  }
}
