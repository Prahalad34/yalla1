import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yalla/Appcolor.dart';
import 'package:yalla/restaurant_details.dart';
class Biryani extends StatefulWidget {
  const Biryani({Key? key}) : super(key: key);

  @override
  State<Biryani> createState() => _BiryaniState();
}

class _BiryaniState extends State<Biryani> {

  int isValue =0;

  bool _showProgress = true;

  @override
  void initState() {
    super.initState();
    // Set the timer to hide the CircularProgressIndicator after 5 seconds
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showProgress = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Biryani',style: TextStyle(fontWeight: FontWeight.bold),),
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
                // _showProgress ? CircularProgressIndicator(
                //   strokeWidth: 2,
                // ):
                Text('All Restaurants Delivering Biryani',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 SizedBox(height: 15,),
                _showProgress ? Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ):
                ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => restaurant_details(),));
                          },
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(imagename[index]),
                                  InkWell(
                                    onTap: (){
                                      setState((){
                                        isValue =index;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 72,top: 3),
                                      child: Icon(Icons.favorite_border,color: isValue==index?Colors.red:Colors.white,),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 50),
                                    child: Text('60% OFF',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 70),
                                    child: Text('up to ₪100',style: TextStyle(color: Colors.white),),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(arrname[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      SizedBox(width: 2,),
                                      Text('4.1 • 40 mins')
                                    ],
                                  ),
                                  Text('17, HaHarash Kiryat Shalom, Tel Aviv-\nYafo Tel Aviv District')
                                ],
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  );
                },),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

 var imagename = ['assets/bir.png','assets/bir1.png','assets/bir2.png','assets/bir3.png','assets/bir4.png','assets/bir5.png'];

var arrname = ['Biryani By Kilo','Apna Sweets','Biryani On Wheels','Hotel Madni Darbar','Dum Safar Biryani','Biryani By Kilo'];
