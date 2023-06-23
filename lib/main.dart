// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, deprecated_member_use, non_constant_identifier_names
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter/material.dart';


import 'Title/title_desktop.dart';
import 'Title/title_mobile.dart';

import 'Menu/menu_desktop.dart';
import 'Menu/menu_mobile.dart';

import 'Contactsupport/contact_support_desktop.dart';
import 'Contactsupport/contact_support_mobile.dart';

import 'Bottom/bottom_desktop.dart';
import 'Bottom/bottom_mobile.dart';

import 'Contactinfo/contactinfo_desktop.dart';
import 'Contactinfo/contactinfo_mobile.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BeeHive',
      home: Scaffold(
        body: SingleChildScrollView(
          child: HelpCenter(),
        )
      ), 
    );
  }
}

Widget content_desktop = MenuDesktop(); 
String lang = "EN";

class HelpCenterDesktop extends StatefulWidget {
  const HelpCenterDesktop({super.key});

  @override
  State<HelpCenterDesktop> createState() => _HelpCenterDesktopState();
}

class _HelpCenterDesktopState extends State<HelpCenterDesktop> {
  @override
  Widget build(BuildContext context) {


    return Column(
      children: <Widget>[

          Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Text("BeeHiveSG", style: TextStyle(color: const Color.fromARGB(167, 255, 153, 0), fontSize: 23, fontWeight: FontWeight.w600)), 
                          SizedBox(width: 12,),
                          Text("Help", style: TextStyle(color: Colors.black, fontSize: 23))
                        ],
                      )
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: (){
                            setState(() {
                              content_desktop = MenuDesktop();
                            });
                          },
                            style: TextButton.styleFrom(
                              side: BorderSide.none,
                              padding: EdgeInsets.all(0),
                              backgroundColor: Colors.transparent
                              ),
                          child: Align(alignment: Alignment.center, child: Text("Help Center", style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, fontSize: 20),),),
                        ),
                        SizedBox(width: 20,),
                        TextButton(
                          onPressed: (){
                            setState(() {
                              content_desktop = ContactInfoDesktop();
                            });
                          },
                            style: TextButton.styleFrom(
                              side: BorderSide.none,
                              padding: EdgeInsets.all(0),
                              backgroundColor: Colors.transparent
                              ),
                          child: Align(alignment: Alignment.center, child: Text("Contact Support", style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, fontSize: 20),),),
                        ),
                        SizedBox(width: 20,),
                        TextButton(
                          onPressed: (){
                            if (lang == "EN") {
                              setState(() {
                                lang = "HR";
                              });
                            }
                            else {setState(() {
                              lang = "EN";
                            });}
                          },
                            style: TextButton.styleFrom(
                              side: BorderSide.none,
                              padding: EdgeInsets.all(0),
                              backgroundColor: Colors.transparent
                              ),
                          child: Align(alignment: Alignment.center, child: Text(lang, style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, fontSize: 20),),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

        TitleDesktop(),


        content_desktop,
        //ContactInfoDesktop(),
        //MenuDesktop(),

        ContactSupportDesktop(),

        BottomDesktop(),

      ],
    );
  }
}

List<String> list = <String>["Help Center", "Contact Support", "EN"];
String dropdownValue = list.first;

bool menu = true;
bool contact = false;

Widget content_mobile = MenuMobile();

class HelpCenterMoblie extends StatefulWidget {
  const HelpCenterMoblie({super.key});

  @override
  State<HelpCenterMoblie> createState() => _HelpCenterMoblieState();
}

class _HelpCenterMoblieState extends State<HelpCenterMoblie> {

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text("BeeHiveSG", style: TextStyle(color: const Color.fromARGB(167, 255, 153, 0), fontSize: 20, fontWeight: FontWeight.w600)), 
                        SizedBox(width: 12,),
                        Text("Help", style: TextStyle(color: Colors.black, fontSize: 20))
                      ],
                    )
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 5,
                            style: const TextStyle(color: Colors.grey),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                if (value == "EN" || value == "HR") {
                                  if (value == "EN") {
                                      setState(() {
                                      list.last = "HR";
                                    });
                                  } else {
                                      setState(() {
                                        list.last = "EN";
                                      });
                                  }
                                }                                           
                                else {
                                  dropdownValue = value!;
                                  if (value == "Help Center") {
                                      setState(() {
                                        content_mobile = MenuMobile();
                                    });
                                  } else {
                                      setState(() {
                                        content_mobile = ContactInfoMobile();
                                      });
                                  }                          
                                }
                              });
                            },
                            items: list.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                    ],
                  ),
                ],
              ),
            ),

        TitleMobile(),

        content_mobile,
          
        ContactSupportMobile(),

        BottomMobile(),

      ],
    );
  }
}



class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
              mobile: HelpCenterMoblie(),
              desktop: HelpCenterDesktop(),
            );
      
    
  }
}







