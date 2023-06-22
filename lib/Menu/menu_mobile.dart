// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:beehive/Articles/text.dart';

String current_title = i0;
bool menu = true;
bool article = false;

class MenuMobile extends StatefulWidget {
  const MenuMobile({super.key});

  @override
  State<MenuMobile> createState() => _MenuState();
}

class _MenuState extends State<MenuMobile> {
  
  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    ChangeArticle(int index)
    {
        switch (index) {
          case 0:
            setState(() {
              current_title = i0; 
              menu = false;
              article = true;           
            });
          case 1:
            setState(() {
              current_title = i1;
              menu = false;
              article = true;              
            });                      
          case 2:
            setState(() {
              current_title = i2;
              menu = false;
              article = true;              
            });      
          case 3:
            setState(() {
              current_title = i3;
              menu = false;
              article = true;
            }); 
          case 4:
            setState(() {
              current_title = i4;
              menu = false;
              article = true;
            }); 
          case 5:
            setState(() {
              current_title = i5;
              menu = false;
              article = true;
            }); 
          case 6:
            setState(() {
              current_title = i6;
              menu = false;
              article = true;
            }); 
          case 7:
            setState(() {
              current_title = i7;
              menu = false;
              article = true;
            }); 
          case 8:
            setState(() {
              current_title = i8;
              menu = false;
              article = true;
            }); 
          case 9:
            setState(() {
              current_title = i9;
              menu = false;
              article = true;
            }); 
          case 10:
            setState(() {
              current_title = i10;
              menu = false;
              article = true;
            }); 
          case 11:
            setState(() {
              current_title = i11;
              menu = false;
              article = true;
            }); 
          case 12:
            setState(() {
              current_title = i12;
              menu = false;
              article = true;
            }); 
          default:
            setState(() {
              current_title = i0;
              menu = false;
              article = true;
            }); 
        }
      
    }
    menuitem(String text, int index)
    {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey),),),
          child: TextButton(
              onPressed: (){
                  ChangeArticle(index);
              },
                style: TextButton.styleFrom(
                  side: BorderSide.none,
                  padding: EdgeInsets.all(10)
                  ),
              child: Align(alignment: Alignment.centerLeft, child: Text(text, style: TextStyle(color: Colors.black, fontSize: 14),),),
            )
        ); 
    }
    return Column(
      children: [
        Visibility(
          visible: menu,
          child:  Container(
            //decoration: BoxDecoration(color: Colors.green),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft, child: Text("How can we help you?", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black,),),),
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
        ),
        Visibility(
          visible: article,
          child:Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:Container(
                  width: mediaQuery.size.width * 1,
                  padding: EdgeInsets.symmetric( vertical: 10),
                  child: Column(
                    children: [
                      Row( 
                        children: [
                          TextButton(
                            onPressed: (){
                              setState(() {
                                menu = true;
                                article = false;                             
                              });
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.chevron_left,
                                  color: Colors.grey
                                ),
                                Text("Back", style: TextStyle(color: Colors.grey, fontSize: 15),)
                              ],
                            )
                          ),
                        ]
                      ),
                      Container(
                        height: 70,
                        child:Align(alignment: Alignment.centerLeft, child: Text(current_title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black,),),),
                      ),
                      Text(text, style: TextStyle(color: Colors.black, fontSize: 12),),

                    ],
                  ),           
                ),  
          ),
        ),
      ],
    );
  }
}