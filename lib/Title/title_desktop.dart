// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';


class TitleDesktop extends StatelessWidget {
  const TitleDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color.fromARGB(255, 201, 201, 201)),
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("BeeHiveSg Help Center", style: TextStyle(color: Colors.orange, fontSize: 60, fontWeight: FontWeight.w800)),
          Text("Support for your Smart Home", style: TextStyle(color: Colors.black, fontSize: 25))
        ],
      ),
    );
  }
}