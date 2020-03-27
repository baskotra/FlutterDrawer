import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterdrawer/new_page.dart';
import 'new_page.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new HomePage(),
  //     routes: <String, WidgetBuilder>{
  //       "/a": (BuildContext context) =>NewPage("New Page")
  // }
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform==TargetPlatform.android?5.0:0.0,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text("Prakhar Baskotra"), accountEmail: Text("prakharbaskotra@gmail.com"), currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text("PB"),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("P"),
              )
            ],),
            new ListTile(
              title: Text("Ashu"),
              subtitle: Text("The Bhai"),
              selected: true,
              trailing: Icon(Icons.account_circle),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>
                NewPage("Ashu Bhaiii!")));
              }
            ),
            ListTile(
              title: Text("Aman"),
              subtitle: Text("The Yadav"),
              trailing: Icon(Icons.assignment_ind),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>
                NewPage("Bade Mia")));
              },
            ),
            Divider(),
             ListTile(
              title: Text("Varun"),
              subtitle: Text("The Dubey"),
              trailing: Icon(Icons.transfer_within_a_station),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>
                NewPage("Shastri")));
              },
            ),
             ListTile(
              title: Text("Akshit"),
              subtitle: Text("The Saxena"),
              trailing: Icon(Icons.brightness_auto),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>
                NewPage("Raju Bhai")));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
        body: new Container(
          child: new Center(child: Text("Home Page", style: TextStyle(fontSize: 30, color: Colors.pink, fontFamily: "Calibri")),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.yellow,
              Colors.blue
            ])
          ),
        ),
    );
  }
}