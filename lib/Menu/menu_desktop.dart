// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:beehive/Articles/text.dart';

double padding_horizaontal_menu = 150;
String current_title = i0;
bool menu = true;
bool article = false;

class MenuDesktop extends StatefulWidget {
  const MenuDesktop({super.key});

  @override
  State<MenuDesktop> createState() => _MenuState();
}



class _MenuState extends State<MenuDesktop> {
  @override
  Widget build(BuildContext context) {
    Articleitem(String text, int index)
    {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: MediaQuery.of(context).size.width * 0.3,
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
    menuitem(double size, String text, int index)
    {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey),),),
          child: TextButton(
              onPressed: (){
                setState(() {
                  menu = false;
                  article = true;
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
                  padding: EdgeInsets.all(5)
                  ),
              child: Align(alignment: Alignment.centerLeft, child: Text(text, style: TextStyle(color: Colors.black, fontSize: size),),),
            )
        ); 
    }
    return Column( children: [
    Visibility(
      visible: menu,
      child: Container(
      //decoration: BoxDecoration(color: Colors.green),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: padding_horizaontal_menu, vertical: 80),
      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft, child: Text("How can we help you?", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black,),),),
          menuitem(18, "Getting Started", 0),
          menuitem(18, "Using the Smart Home App", 1),
          menuitem(18, "User Profile", 2),
          menuitem(18, "New User Profile", 3),
          menuitem(18, "Connect multiple Homes to your User account", 4),
          menuitem(18, "Switching between Homes", 5),
          menuitem(18, "Navigating the BeeHiveSG App", 6),
          menuitem(18, "Scenes and Automations", 7),
          menuitem(18, "Create a new Scene", 8),
          menuitem(18, "Create a sensor Automation", 9),
          menuitem(18, "Create an Accessory Automation", 10),
          menuitem(18, "User Privacy and Protection Regulation", 11),
          menuitem(18, "FAQ", 12),
        ],
        ),
      ),
    ),
    Visibility(
      visible: article,
      child:    Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                decoration: BoxDecoration(border: Border(right: BorderSide(width: 2, color: Colors.grey),)),
                child: Column(
                  children: [
                    Align(alignment: Alignment.centerLeft, child: Text("Articles in this section", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.black,),),),
                    Articleitem("Getting Started", 0),
                    Articleitem("Using the Smart Home App", 1),
                    Articleitem("User Profile", 2),
                    Articleitem("New User Profile", 3),
                    Articleitem("Connect multiple Homes to your User account", 4),
                    Articleitem("Switching between Homes", 5),
                    Articleitem("Navigating the BeeHiveSG App", 6),
                    Articleitem("Scenes and Automations", 7),
                    Articleitem( "Create a new Scene", 8),
                    Articleitem( "Create a sensor Automation", 9),
                    Articleitem( "Create an Accessory Automation", 10),
                    Articleitem( "User Privacy and Protection Regulation", 11),
                    Articleitem( "FAQ", 12),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
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
        )
      )
      ]
    );
  }
}