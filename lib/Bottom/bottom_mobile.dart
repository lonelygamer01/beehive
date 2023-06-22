// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class BottomMobile extends StatelessWidget {
  const BottomMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Text("2023 BeeHiveSG Support", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),),
          SizedBox(height: 10,),
          Container(
            //decoration: BoxDecoration(color: Colors.green),
            width: 400,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Privacy Policy", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),),
              Text("Terms of Service", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),),
              Text("Contact Us", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),),
              Text("Smart Home", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),),
            ],
          )
        )

        ],
      ),
    );
  }
}