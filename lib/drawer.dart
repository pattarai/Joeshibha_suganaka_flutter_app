import 'package:flutter/material.dart';
import 'package:suganaka1/normal.dart';
import 'package:suganaka1/scientific.dart';
import 'package:suganaka1/snackbar.dart';
import 'package:suganaka1/stack.dart';
import 'package:suganaka1/webview.dart';
import 'channel.dart';
import 'login.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {

  var drawerItems = [
    new DrawerItem("Login", Icons.vpn_key),
    new DrawerItem("Calculator", Icons.apps),
    new DrawerItem("Scientific",Icons.computer),
    new DrawerItem("Snackbar",Icons.space_bar),
    new DrawerItem("Webviews", Icons.web),
    new DrawerItem("Stack",Icons.layers),
    new DrawerItem("MyChannel",Icons.phone_android),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return LoginPage();
        break;
      case 1:
        return Calculator();
        break;
      case 2:
        return ScientificCalculator();
        break;
      case 3:
        return MySnackbar();
        break;
      case 4:
        return WebViewDemo();
        break;
      case 5:
        return MyStack();
        break;
      case 6:
        return Channel();
        break;
      default:
        return new Text("Error");
        break;
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];

    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      if (i == 7) {
        drawerOptions.add(
          const Divider(height: 1.0, color: Colors.grey),
        );
      }
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
    return new Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(
          widget.drawerItems[_selectedDrawerIndex].title,
        ),
      ),
      drawer: new Drawer(
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Joeshibha"),
                accountEmail: new Text("joeshibha.23it@licet.ac.in"),
                currentAccountPicture: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.kE7wAHGIqL78jbPMPbcxsgHaEk?w=277&h=182&c=7&o=5&pid=1.7"), // for Network image
                ),
                decoration: new BoxDecoration(
                  color: Color(0xFF222437),
                ),
              ),
              new Column(children: drawerOptions)
            ],
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}