import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yalla/Appcolor.dart';
import 'package:yalla/Biryani.dart';
import 'package:yalla/Login.dart';
import 'package:yalla/profile.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
      //backgroundColor: Colors.white,
      appBar: AppBar(
       // backgroundColor: Colors.white,
         title: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 15,),
             Row(
               children: [
                 Text('17 Saharov St',style: TextStyle(fontWeight: FontWeight.bold),),
                 Icon(Icons.keyboard_arrow_down_rounded)
               ],
             ),
             Text('Behind mall, Rishon Lezion 987456, Israel',style: TextStyle(fontSize: 12),)
           ],
         ),
        leading:Icon(Icons.location_on,color: Appcolor.PrimaryColor,),
        titleSpacing: -10,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => profile(),));
            },
              child: Image.asset('assets/boy.png',height: 50,width: 50,)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                        filled: true,
                      fillColor: Appcolor.PrimaryColor1,
                      hintText: 'Search Food...',
                      prefixIcon: Icon(Icons.search),

                    ),
                  ),
                SizedBox(height: 20,),
                Text("Recommended for you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                _showProgress ? Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ):
                GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                     itemCount: 4,
                     itemBuilder: (BuildContext ctx, index) {
                      return Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),
                                      child: Stack(
                                        children: [
                                          Image.asset(imagename[index],fit: BoxFit.cover,height: 110,width: 90,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 60),
                                            child: Text('50% OFF',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 80),
                                            child: Text('up to ₪100',style: TextStyle(color: Colors.white),),
                                          )
                                        ],
                                      )),
                                  SizedBox(width: 5,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       Text(arrname[index],style: TextStyle(
                                         overflow: TextOverflow.visible,
                                         fontSize: 11,fontWeight: FontWeight.bold
                                       ),),
                                      Text('North Indian',style: TextStyle(fontSize: 12),),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Icon(Icons.watch_later_outlined,size: 15,),
                                          Text('45-55 min',style: TextStyle(fontSize: 12))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );

                },),
                SizedBox(height: 25,),
                Text('What’s on your mind?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                SizedBox(
                  height: 85,
                  child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       physics: ScrollPhysics(),
                       shrinkWrap: true,
                       itemCount: 4,
                      itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Column(
                             // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Image.asset(image1name[index]),
                                Text(arr1name[index])
                              ],

                          ),
                        );
                      },),
                ),
                SizedBox(height: 25,),
                SizedBox(
                  height: 85,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                         // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(image2name[index]),
                            Text(arr2name[index])
                          ],

                        ),
                      );
                    },),
                ),
                SizedBox(height: 25,),
                Text('Top rated near you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        SizedBox(height: 25,),
                _showProgress ? Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ):
        SizedBox(
          height: 205,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Biryani(),));
                        },
                        child: Stack(
                          children: [
                            Image.asset(image3name[index]),
                            Padding(
                              padding: const EdgeInsets.only(left: 25,top: 100),
                              child: Text('60% OFF',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25,top: 122),
                              child: Text('up to ₪100',style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90,top: 5),
                              child: Icon(Icons.favorite_border,color: Colors.white,)
                            ),


                          ],
                        )),
                    Text(arr3name[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        SizedBox(width: 2,),
                        Text('4.1 • 40 mins')
                      ],
                    )
                  ],

                ),
              );
            },),
        ),
                SizedBox(height: 25,),
                Text('500 restaurants to explore',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                _showProgress ? Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ):
                 ListView.builder(
                  //scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Image.asset(image4name[index],fit: BoxFit.cover,width: 360,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25,top: 130),
                                  child: Text('60% OFF UPTO ₪40',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Expanded(child: Text('Biryani By Kilo',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                Icon(Icons.star,color: Colors.yellow,),
                                SizedBox(width: 2,),
                                Text('4.1 • 40 mins')
                              ],
                            ),
                            Text('13, HaDuchifat')
                          ],

                        ),
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

 var imagename = ['assets/ho.png','assets/ho1.png','assets/ho2.png','assets/ho3.png'];

 var arrname = ['Delectable\nDelights - S...','Shrinath\nRestaurant','Hotel\nRajhans Dal..','Meal\nMaster’s'];

 var image1name = ['assets/thali1.png','assets/thali.png','assets/thali2.png','assets/thali3.png'];
 var arr1name = ['Thali','Biryani','Burger','Pizza'];

var image2name = ['assets/ch.png','assets/ch1.png','assets/ch2.png','assets/ch3.png'];
var arr2name = ['Chinese','Cake','Paneer','Sandwich'];

var image3name = ['assets/tr.png','assets/tr1.png','assets/tr.png','assets/tr1.png','assets/tr1.png'];
var arr3name = ['Biryani By Kilo','Apna Sweets','Apna Sweets','Biryani By Kilo','Apna Sweets'];

var image4name = ['assets/res.png','assets/res1.png','assets/res2.png',];

