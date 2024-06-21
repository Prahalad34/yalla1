import 'package:flutter/material.dart';

import 'Appcolor.dart';
class Customer_Support extends StatefulWidget {
  const Customer_Support({Key? key}) : super(key: key);

  @override
  State<Customer_Support> createState() => _Customer_SupportState();
}

class _Customer_SupportState extends State<Customer_Support> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Customer Support',style: TextStyle(fontWeight: FontWeight.bold)),
        leading:  Icon(Icons.arrow_back_ios_rounded,color: Appcolor.PrimaryColor,),
          titleSpacing: -6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text('Name',style: TextStyle(fontSize: 16),),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Vinson Cooper',
                      filled: true,
                      fillColor: Appcolor.PrimaryColor1
                  ),
                ),
                SizedBox(height: 15,),
                Text('Phone number',style: TextStyle(fontSize: 16),),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: '+972 89745 61230',
                      filled: true,
                      fillColor: Appcolor.PrimaryColor1
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 15,),
                Text('Email ID',style: TextStyle(fontSize: 16),),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'vinsoncooper123@gmail.com',
                      filled: true,
                      fillColor: Appcolor.PrimaryColor1
                  ),
                ),
                SizedBox(height: 15,),
                Text('Message',style: TextStyle(fontSize: 16),),
                SizedBox(height: 5,),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Lorem ipsum dolor sit amet, consectetur adipiscingelit, sed do eiusmod tempor incididunt ut labore etdolore magna aliqua. Aenean pharetra magna acplacerat vestibulum. Suspendisse ultrices gravidadictum fusce ut placerat orci nulla pellentesque. Atultrices mi tempus imperdiet nulla malesuada.',
                      filled: true,
                      fillColor: Appcolor.PrimaryColor1
                  ),
                ),
                SizedBox(height: 100,),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Appcolor.PrimaryColor
                    ),
                    child: Center(child: Text('Send',style: TextStyle(color: Colors.white),))),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
