import 'package:flutter/material.dart';

import 'Appcolor.dart';
class My_Profile extends StatefulWidget {
  const My_Profile({Key? key}) : super(key: key);

  @override
  State<My_Profile> createState() => _My_ProfileState();
}

class _My_ProfileState extends State<My_Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('My Profile',style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back_ios_rounded,color: Appcolor.PrimaryColor,),
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
                Stack(
                  children: [
                    Center(child: Image.asset('assets/pro.png')),
                    Positioned(
                      bottom: -0,
                      top: 50,
                      left: 200,
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 2),
                            color: Appcolor.PrimaryColor,
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.create_outlined,color: Colors.white,size: 15,),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 35,),
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
                SizedBox(height: 100,),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Appcolor.PrimaryColor
                    ),
                    child: Center(child: Text('Update profile',style: TextStyle(color: Colors.white),))),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
