 import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:radio_taxi/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {

  //const HomePage({Key? key}) : super(key: key);

  HomeController _con = new HomeController();



  @override
  Widget build(BuildContext context) {

    _con.init(context);
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Taxi App 2.0',
          style: TextStyle(fontFamily: 'TypeKeys', fontSize: 43)
        ),

      ),
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end:Alignment.bottomLeft,
                      colors: [Colors.black, Colors.white10]
              )),
              child: Column(
        children: [
          _bannerUp(context),

          SizedBox(height: 50),
          _textSelectYourRole("Eliege Tu Usuario"),
          SizedBox(height: 40),
          _imageTypeUser(context, 'assets/img/cliente.png'),
          SizedBox(height: 40),
          _textTypeUser('Cliente'),
          SizedBox(height: 30,),
          _imageTypeUser(context, 'assets/img/cliente.png'),
          SizedBox(height: 30,),
          _textTypeUser('Conductor')
        ],
    ),
            ),
          )
    );
  }
  Widget _textTypeUser(String typeUser){
        return Text(typeUser,
        style: TextStyle(
            fontSize: 15,
            color: Colors.deepPurpleAccent
        )
    );
  }
  Widget _imageTypeUser(BuildContext context, String userImage){
    return GestureDetector(
      onTap: _con.goToLoginPage,
      child: CircleAvatar(
        backgroundImage: AssetImage(userImage),
        radius: 40,
        backgroundColor: Colors.grey[400],
      ),
    );
  }
  Widget _textSelectYourRole(String selectUserType){
    return Text(selectUserType, textAlign: TextAlign.center,
        style: TextStyle(fontSize: 17, color: Colors.white)
    );


  }

  Widget _bannerUp(BuildContext context){
    return ClipPath(
        clipper: WaveClipperTwo(flip: true),
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height *0.25,
          child: ( Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Text('Taxi App',
                  style: TextStyle(fontFamily: 'Report', fontSize: 44, fontWeight: FontWeight.w700)
              ),
              Image.asset('assets/img/logo.png', width: 150, height: 100),
            ]
          )
          ),
        )
    );
  }

}
