// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class ContactSupportMobile extends StatelessWidget {
  const ContactSupportMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(color: Colors.grey),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Text("Do you have a question\nthat has not been\naddressed by our articles?\nOur support team is here\nto assist you!", style: TextStyle(fontSize: 10),),
            ],
          ),
          SizedBox(width: 50,),
          Container(
            width: 100,
            height: 70,
            child: ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                  // Change your radius here
                  borderRadius: BorderRadius.circular(16),      
                  ),
                ),
              ),
              child: Align(alignment: Alignment.center, child: Text('Contact the\nSupport Team', style: TextStyle(color: Colors.black, fontSize: 10)),),
            ),
          )
        ],
      ),
    );
  }
}