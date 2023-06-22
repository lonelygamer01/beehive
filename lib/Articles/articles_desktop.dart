// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'text.dart';

Color menuBack = Colors.transparent;
String current_title = i0;

class ArticlesDesktop extends StatefulWidget {
  const ArticlesDesktop({super.key});

  @override
  State<ArticlesDesktop> createState() => _ArticlesDesktopState();
}

class _ArticlesDesktopState extends State<ArticlesDesktop> {

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    menuitem(String text, int index)
    {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: mediaQuery.size.width * 0.3,
          height: 80,
          child: TextButton(
              onPressed: (){
                setState(() {
                  //menuBack = Color.fromARGB(255, 223, 223, 223);
                  switch (index) {
                    case 0:
                      current_title = i0;
                    case 1:
                      current_title = i1;                      
                    case 2:
                      current_title = i2;      
                    case 3:
                      current_title = i3; 
                    case 4:
                      current_title = i4;
                    case 5:
                      current_title = i5;
                    case 6:
                      current_title = i6;
                    case 7:
                      current_title = i7;
                    case 8:
                      current_title = i8;
                    case 9:
                      current_title = i9;
                    case 10:
                      current_title = i10;
                    case 11:
                      current_title = i11;
                    case 12:
                      current_title = i12;
                    default:
                      current_title = i0;
                  }
                });
              },
                style: TextButton.styleFrom(
                  side: BorderSide.none,
                  padding: EdgeInsets.all(5),
                  //backgroundColor: menuBack
                  ),
              child: Align(alignment: Alignment.centerLeft, child: Text(text, style: TextStyle(color: Colors.black, fontSize: 18),),),
            )
        ); 
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            decoration: BoxDecoration(border: Border(right: BorderSide(width: 2, color: Colors.grey),)),
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft, child: Text("Articles in this section", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.black,),),),
                menuitem("Getting Started", 0),
                menuitem("Using the Smart Home App", 1),
                menuitem("User Profile", 2),
                menuitem("New User Profile", 3),
                menuitem("Connect multiple Homes to your User account", 4),
                menuitem("Switching between Homes", 5),
                menuitem("Navigating the BeeHiveSG App", 6),
                menuitem("Scenes and Automations", 7),
                menuitem( "Create a new Scene", 8),
                menuitem( "Create a sensor Automation", 9),
                menuitem( "Create an Accessory Automation", 10),
                menuitem( "User Privacy and Protection Regulation", 11),
                menuitem( "FAQ", 12),
              ],
            ),
          ),
          Container(
            width: mediaQuery.size.width * 0.5,
            height: 1165,
            padding: EdgeInsets.symmetric( vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 150,
                  child:Align(alignment: Alignment.centerLeft, child: Text(current_title, style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.black,),),),
                ),
                Text(text, style: TextStyle(color: Colors.black, fontSize: 18),),

              ],
            ),           
          ),  
        ],
      ),
    );
  }
}