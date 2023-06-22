// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

double padding_horizaontal_menu = 150;

class MenuDesktop extends StatefulWidget {
  const MenuDesktop({super.key});

  @override
  State<MenuDesktop> createState() => _MenuState();
}



class _MenuState extends State<MenuDesktop> {
  @override
  Widget build(BuildContext context) {
    menuitem(double size, String text)
    {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey),),),
          child: TextButton(
              onPressed: (){},
                style: TextButton.styleFrom(
                  side: BorderSide.none,
                  padding: EdgeInsets.all(5)
                  ),
              child: Align(alignment: Alignment.centerLeft, child: Text(text, style: TextStyle(color: Colors.black, fontSize: size),),),
            )
        ); 
    }
    return Container(
      //decoration: BoxDecoration(color: Colors.green),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: padding_horizaontal_menu, vertical: 80),
      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft, child: Text("How can we help you?", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black,),),),
          menuitem(18, "Getting Started"),
          menuitem(18, "Using the Smart Home App"),
          menuitem(18, "User Profile"),
          menuitem(18, "New User Profile"),
          menuitem(18, "Connect multiple Homes to your User account"),
          menuitem(18, "Switching between Homes"),
          menuitem(18, "Navigating the BeeHiveSG App"),
          menuitem(18, "Scenes and Automations"),
          menuitem(18, "Create a new Scene"),
          menuitem(18, "Create a sensor Automation"),
          menuitem(18, "Create an Accessory Automation"),
          menuitem(18, "User Privacy and Protection Regulation"),
          menuitem(18, "FAQ"),
        ],
      ),
    );
  }
}