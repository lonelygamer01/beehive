// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class ContactInfoMobile extends StatelessWidget {
  const ContactInfoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      //decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text("Contact Information", style: TextStyle(color: Colors.grey, fontSize: 28, fontWeight: FontWeight.w400)),
                SizedBox(height: 30),
                Text("Contact Number", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400)),
                Text("+38512312345", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)),
                SizedBox(height: 30),
                Text("Email Address", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400)),
                Text("support@beehive.com", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)),
                SizedBox(height: 50),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            //decoration: BoxDecoration(color: Colors.green),
            child: Column(
              children: [
                Text("If you have encoutered and issue or have question\nthat has not been addressed by our articles, our support teamis here\nto assist you.", style: TextStyle(color: Colors.black, fontSize: 13.5, fontWeight: FontWeight.w400)),
                SizedBox(height: 30),
                Text("If you have encoutered and issue or have question\nthat has not been addressed by our articles, our support team\nis here to assist you. If you have encoutered and\nissue or have question that has not been addressed by our articles,\nour support team is here to assist you.\nIf you have encoutered and issue or have question that\nhas not been addressedby our articles, our support team is here\nto assist you.", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400)),
                SizedBox(height: 30),
                Text("If you have encoutered and issue or have question\nthat has not been addressed by our articles, our support team is her\nto assist you.", style: TextStyle(color: Colors.black, fontSize: 13.5, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}