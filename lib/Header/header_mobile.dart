// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

List<String> list = <String>["Help Center", "Contact Support", "EN"];
String dropdownValue = list.first;

class HeaderMobile extends StatefulWidget {
  const HeaderMobile({super.key});

  @override
  State<HeaderMobile> createState() => _HeaderMobileState();
}

class _HeaderMobileState extends State<HeaderMobile> {

  

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        } /*
                        if (value == "HR") {
                          setState(() {
                            list.last = "EN";
                          });
                        }  */                                            
                        else {
                          dropdownValue = value!;
                          getvaule();
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
    );
  }
}

void getvaule()
{
  switch (dropdownValue) {
    case "Help Center":
      print("helpcenter pressed");
    
    case "Contact Support":
      print("contactsupport pressed");
  }
}