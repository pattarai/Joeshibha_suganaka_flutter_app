import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'drawer.dart';
void main() {
  runApp(MaterialApp(home:HomeScreen()));
}
class Channel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Colors.lightBlueAccent, Colors.tealAccent],
    ).createShader(new Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 300,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                    image: DecorationImage(
                      image: AssetImage("images/sunshine.jpeg"),
                      alignment: Alignment.topCenter,
                      colorFilter: ColorFilter.mode(
                          Colors.black87.withOpacity(0.5), BlendMode.dstATop),
                      fit: BoxFit.fitHeight,
                    ),
                    color: Colors.black87,
                  ),
                  padding: EdgeInsets.all(30),
                  child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "ELSE",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5,
                          fontSize: 50,
                          foreground: new Paint()
                            ..shader = linearGradient,
                          fontFamily: "Frozito"),
                    ),
                    Text(
                      "If you want rest change of your work",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: "Lovely"),
                    ),
                  ]),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                      color: Colors.tealAccent,
                      width: 5,
                    ),
                   ),

                  child: Row(
                    children: <Widget>[
                      Flexible(
                          child: Padding(
                            padding:
                            const EdgeInsets.only(
                                left: 8.0, top: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://youtu.be/2b1Fiw9uekM");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          end: Alignment.bottomLeft,
                                          begin: Alignment.topRight,
                                          colors: [
                                            Color(0xff4facfe),
                                            Color(0xff00f2fe)
                                          ]
                                      ),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Swimming",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontFamily: "Frozito"),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          "Ian Thorpe",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 30,
                                              fontFamily: "Honeymoon"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                      ),
                      Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 8.0, top: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://youtu.be/bBhG83TjqK8");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 200,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          end: Alignment.bottomLeft,
                                          begin: Alignment.topRight,
                                          colors: [
                                            Color(0xfffa709a), Color(0xfffee140)
                                          ]),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "CARNATIC MUSIC",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: "Frozito"),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          "Eppo Varuvaaro",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 30,
                                              fontFamily: "Honeymoon"),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                      color: Colors.tealAccent,
                      width: 5,
                    ),
                   ),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          child: Padding(
                            padding:
                            const EdgeInsets.only(
                                left: 8.0, top: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://youtu.be/6v2L2UGZJAM?list=TLPQMjgwNzIwMjAtaYQ2yIWvFQ");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 200,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          end: Alignment.bottomLeft,
                                          begin: Alignment.topRight,
                                          colors: [
                                            Color(0xffa1c4fd), Color(0xffc2e9fb)

                                          ]),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          "NATURE SCENERY",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 25,
                                              fontFamily: "Frozito"),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          "Plannet Earth",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 30,
                                              fontFamily: "Honeymoon"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                      ),
                      Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 8.0, top: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://youtu.be/wJnBTPUQS5A?list=TLPQMjgwNzIwMjAtaYQ2yIWvFQ");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          end: Alignment.bottomLeft,
                                          begin: Alignment.topRight,
                                          colors: [
                                            Color(0xff1e3c72), Color(0xff2a5298)

                                          ]),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Alan Walker",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontFamily: "Frozito"),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          "The Spectre",
                                          style: TextStyle(
                                              color: Colors.tealAccent,
                                              fontSize: 30,
                                              fontFamily: "Honeymoon"),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                      color: Colors.tealAccent,
                      width: 5,
                    ),
                    ),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          child: Padding(
                            padding:
                            const EdgeInsets.only(
                                left: 8.0, top: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://youtu.be/3kJEzkHBW6o");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          end: Alignment.bottomLeft,
                                          begin: Alignment.topRight,
                                          colors: [
                                            Color(0xff84fab0), Color(0xff8fd3f4)

                                          ]),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          "K SERIES",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 25,
                                              fontFamily: "Frozito"),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          "He's Beautiful",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 30,
                                              fontFamily: "Honeymoon"

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                      ),
                      Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 8.0, top: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://youtu.be/O27PXuPAgxY");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 200,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          end: Alignment.bottomLeft,
                                          begin: Alignment.topRight,
                                          colors: [
                                            Color(0xffff9a9e), Color(0xfffad0c4)

                                          ]),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "FANTASY",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 30,
                                              fontFamily: "Frozito"),
                                        ),
                                        Padding(padding: EdgeInsets.all(15)),
                                        Text(
                                          "Pirates of the Caribbean",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 30,
                                              fontFamily: "Honeymoon"),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),

                  ]),
                ),




      ),
    );
  }
}
