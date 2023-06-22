// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class ContactSupportDesktop extends StatelessWidget {
  const ContactSupportDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(color: Colors.grey),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("Do you have a question that has not\nbeen addressed by our articles?", style: TextStyle(fontSize: 15),),
              SizedBox(height: 20,),
              Text("Our support team is here to assist you!",style: TextStyle(fontSize: 15),)
            ],
          ),
          Container(
            width: 250,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
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
              child: Align(alignment: Alignment.center, child: Text('Contact the\nSupport Team', style: TextStyle(color: Colors.black, fontSize: 18)),),
            ),
          )
        ],
      ),
    );
  }
}