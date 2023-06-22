// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, deprecated_member_use, non_constant_identifier_names
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter/material.dart';

import 'Header/header_desktop.dart';
import 'Header/header_mobile.dart';

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

import 'Articles/articles_desktop.dart';


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

        HeaderDesktop(),

        TitleDesktop(),

        //Ezek a 3 különálló oldalak nincsenek összekötve
        ContactInfoDesktop(),
        MenuDesktop(),
        ArticlesDesktop(),

        ContactSupportDesktop(),

        BottomDesktop(),

      ],
    );
  }
}




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
        
        HeaderMobile(),

        TitleMobile(),

        //Ezek a 2 különálló oldalak nincsenek összekötve
        MenuMobile(),
        ContactInfoMobile(),
            
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







