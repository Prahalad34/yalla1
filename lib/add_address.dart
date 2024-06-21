import 'package:flutter/material.dart';
import 'package:yalla/save_address.dart';

import 'Appcolor.dart';
class add_address extends StatefulWidget {
  const add_address({Key? key}) : super(key: key);

  @override
  State<add_address> createState() => _add_addressState();
}

class _add_addressState extends State<add_address> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/map.png',fit: BoxFit.cover,height: 600,width: 400,),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                    backgroundColor: Colors.white,

                    child: Icon(Icons.location_on,color: Appcolor.PrimaryColor,)),
                title: Text('Home',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                subtitle: Text('Lorem ipsum dolor sit amet elit...',style: TextStyle(fontSize: 13),),
                trailing: Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Appcolor.PrimaryColor)
                  ),
                  alignment: Alignment.center,
                    child:Text('Change',style: TextStyle(color: Appcolor.PrimaryColor),)),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => save_address(),));
                },
                child: Container(
                  margin: EdgeInsets.all(16),
                    height: 50,
                   // width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Appcolor.PrimaryColor
                    ),
                    alignment: Alignment.center,
                    child:Text('Confirm location',style: TextStyle(color: Colors.white),)),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
