import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(MaterialApp

    (home:HomeScreen())); }
class MyStack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Stack();
  }
}


class _Stack extends State<MyStack> {
  TextEditingController _stackController= new TextEditingController();

  List<int> stack = new List<int>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("My Stack Demo",
            style:TextStyle(
              fontFamily:"Frozito",
            )),
        backgroundColor:Colors.pinkAccent,
      ),
      backgroundColor: Colors.tealAccent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(padding:EdgeInsets.all(20),),

            Text(
              "Enter a number to push into the stack:",
              style:TextStyle(
                color:Colors.red,
                fontFamily: "Lovely",
                fontSize: 30,
              ),

              textAlign: TextAlign.center,),
            TextFormField(
              controller: _stackController,
            ),
            Padding(padding: EdgeInsets.all(20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text("Push"),
                    onPressed: (){
                      stack.add(int.parse(_stackController.text));
                      print(stack.toString());
                      setState(() {

                      });
                    }),
                Padding(padding: EdgeInsets.all(20),),
                RaisedButton(
                    child: Text("Pop"),
                    onPressed: (){
                      try { stack.removeLast();}
                      on RangeError catch (e) {
                        print("Underflow detected!");
                      }
                      print(stack.toString());
                      setState(() {

                      });
                    }),
              ],
            ),
            Padding(padding: EdgeInsets.all(20),),
            Text(
              "Elements in my stack are:",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontFamily: "Lovely",
              ),
              textAlign: TextAlign.center,
            ),
            Column(
              children: returnStackElements(),
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> returnStackElements(){
    List<Widget> elementsToReturn =[];
    stack.forEach((element) {
      elementsToReturn.add(Text(element.toString()));
    });
    return elementsToReturn;

  }
}