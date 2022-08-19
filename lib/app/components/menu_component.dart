import 'package:flutter/material.dart';
import 'package:hello_world/app/pages/counter_page.dart';
import 'package:hello_world/app/pages/list_page.dart';
import 'package:hello_world/app/pages/name_page.dart';

Widget Menu(BuildContext context){
  return Drawer(
      child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Text("Navigation")
            ),
            ListTile(
              title: Text("Counter"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterPage()),);
              },
            ),
            ListTile(
              title: Text("List"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),);
              },
            ),
            ListTile(
              title: Text("Name"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NamePage()),);
              },
            ),
          ]
      )
  );
}
