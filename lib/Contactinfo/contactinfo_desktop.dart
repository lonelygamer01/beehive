// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class ContactInfoDesktop extends StatelessWidget {
  const ContactInfoDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 500,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
      //decoration: BoxDecoration(color: Colors.red),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
              children: [
                Text("Contact Information", style: TextStyle(color: Colors.grey, fontSize: 35, fontWeight: FontWeight.w400)),
                SizedBox(height: 30),
                Text("Contact Number", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400)),
                Text("+38512312345", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w400)),
                SizedBox(height: 30),
                Text("Email Address", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400)),
                Text("support@beehive.com", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w400)),
                SizedBox(height: 150),
              ],
            ),
          ),
          Container(
            //decoration: BoxDecoration(color: Colors.green),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft, 
                  child:Text("If you have encoutered and issue or have question\nthat has not been addressed by our articles, our support teamis here\nto assist you.", style: TextStyle(color: Colors.black, fontSize: 16.5, fontWeight: FontWeight.w400)),),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft, 
                  child: Text("If you have encoutered and issue or have question\nthat has not been addressed by our articles, our support team\nis here to assist you. If you have encoutered and\nissue or have question that has not been addressed by our articles,\nour support team is here to assist you.\nIf you have encoutered and issue or have question that\nhas not been addressedby our articles, our support team is here\nto assist you.", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400)),),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.bottomLeft, 
                  child:Text("If you have encoutered and issue or have question\nthat has not been addressed by our articles, our support team is her\nto assist you.", style: TextStyle(color: Colors.black, fontSize: 16.5, fontWeight: FontWeight.w400)),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}