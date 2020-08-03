import'package:flutter/material.dart';

import 'package:suganaka1/scientific.dart';

import 'calculator.dart';
void main() {
  runApp(MaterialApp(
    home: LoginPage(),

      ));
  }

  class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){

  return _LoginPage();
  }
  }
  class _LoginPage extends State<LoginPage>{
  TextEditingController _logincontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  return Scaffold(

  backgroundColor: Colors.black87,
  appBar: AppBar(
  centerTitle: true,
  title: Text("Cross this to enter",
  style: TextStyle(
  fontFamily: "Honeymoon",
  fontSize: 30
  ),
  ),
  ),
  body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Container(
  decoration: BoxDecoration(color:Colors.white),
  child: Column(
  children: <Widget>[
  Center(child:  Text("USERNAME OR EMAIL",
  style:TextStyle(
  fontSize: 30,
  color: Colors.pinkAccent,
  fontFamily:"CaptainBarber",

  ),
  ),),
  TextFormField(
  controller: _logincontroller,
  ),
  Text("Password",
  style: TextStyle(
  fontSize: 30,
  color:Colors.blueAccent,
  fontFamily: "CaptainBarber",
  ),
  ),
  TextFormField(

  ),
  ],
  ),
            ),
            RaisedButton(
              color: Colors.pink,
              child: Text("LOG IN",
                  style:TextStyle(color:Colors.tealAccent,
                      fontFamily: "BebasNeue",
                      fontSize: 20)
              ),
              onPressed: () {
                print("Someone logged in");
              },
            ),
            InkWell(
                child: Text("Click here to Normal_calc",
                    style:TextStyle(
                        fontSize: 25,
                        color:Colors.white,
                        fontFamily: "Frozito"
                    )  ),

                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Calculator()));
                }),
    InkWell(
        child: Text("Click here to Scientific_calc",
            style:TextStyle(
                fontSize: 25,
                color:Colors.white,
                fontFamily: "Frozito"
            )  ),

        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScientificCalculator()));
        }),
          ],
        ),
      ),
    );
  }
}