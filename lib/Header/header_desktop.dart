// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

String lang = "EN";


class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                onPressed: (){},
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
    );
  }
}