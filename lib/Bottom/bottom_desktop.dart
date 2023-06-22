// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class BottomDesktop extends StatelessWidget {
  const BottomDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("2023 BeeHiveSG Support", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
          Container(
            //decoration: BoxDecoration(color: Colors.green),
            width: 500,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Privacy Policy", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
              Text("Terms of Service", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
              Text("Contact Us", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
              Text("Smart Home", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
            ],
          )
        )

        ],
      ),
    );
  }
}