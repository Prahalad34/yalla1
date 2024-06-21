import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yalla/view_cart.dart';

import 'Appcolor.dart';
class restaurant_details extends StatefulWidget {
  const restaurant_details({Key? key}) : super(key: key);

  @override
  State<restaurant_details> createState() => _restaurant_detailsState();
}

class _restaurant_detailsState extends State<restaurant_details> {

  int isVAlue = 0;

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
        title: Text(''),
        leading: Icon(Icons.arrow_back_ios_rounded,color: Appcolor.PrimaryColor,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: (){
                  AlertDialog(
                    title: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                    ),
                  );
                }, icon: Icon(Icons.search)),
          )
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
                Text('Biryani By Kilo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    SizedBox(width: 2,),
                    Text('4.1 • 40 mins')
                  ],
                ),
                Text('Lorem ipsum dolor sit amet consectetur adipiscing elitsed do eiusmod tempor incididunt ut labore.'),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                Stack(
                  children: [
                    Image.asset('assets/line.png',height: 60,),
                    Padding(
                        padding: const EdgeInsets.only(left: 20,top: 5),
                        child: Text('Zeid Alexander')),
                    Padding(
                      padding: const EdgeInsets.only(top: 32,left: 20),
                      child: Text('La Guardia'),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Icon(Icons.directions_bike,color: Appcolor.PrimaryColor,),
                    SizedBox(width: 10,),
                    Text('0.5 kms',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text('| ',style: TextStyle(color: Appcolor.PrimaryColor),),
                    SizedBox(width: 10,),
                    Text(' ₪20 Delivery fee will apply')
                  ],
                ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                Text('Recommended (50)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                SizedBox(height: 25,),
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
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Appcolor.PrimaryColor
                              ),
                              child: Center(child: Text('Bestseller',style: TextStyle(color: Colors.white),)),
                            ),
                          //  SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(arrname[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    Stack(
                                      children: [
                                        Image.asset(imagename[index]),
                                        itemData[index].ShouldVisible?
                                        Padding(
                                          padding: const EdgeInsets.only(top: 85,left: 15),
                                          child: Center(
                                              child: Container(
                                                height: 30,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Colors.white,
                                                    border: Border.all(color: Appcolor.PrimaryColor)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: <Widget>[
                                                    InkWell(
                                                        onTap: (){
                                                          setState(() {
                                                            if(itemData[index].Counter <6)
                                                            {
                                                              itemData[index].ShouldVisible = !itemData[index].ShouldVisible;
                                                            }else{
                                                              itemData[index].Counter--;
                                                            }

                                                          });
                                                        }
                                                        ,child: Icon(Icons.remove,color: Appcolor.PrimaryColor,size: 18,)),
                                                    Text('${itemData[index].Counter}',style: TextStyle(
                                                        color: Appcolor.PrimaryColor
                                                    ),
                                                    ),
                                                    InkWell(
                                                        onTap: (){
                                                          setState(() {
                                                            itemData[index].Counter++;
                                                          });
                                                        }
                                                        ,child: Icon(Icons.add,color: Appcolor.PrimaryColor,size: 18,)),

                                                  ],
                                                ),

                                              )
                                          ),
                                        ) : Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 85,left: 15),
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              height: 30,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  border: Border.all(color: Colors.white70),
                                                color: Colors.white
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Center(
                                                    child: InkWell(
                                                      onTap:(){
                                                        setState(() {
                                                          itemData[index].ShouldVisible = ! itemData[index].ShouldVisible;
                                                        });

                                                              },

                                                      child: Text('ADD',style: TextStyle(color: Appcolor.PrimaryColor),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                            ),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 72,top: 5),
                                          child:  InkWell(
                                            onTap: (){
                                              setState((){
                                                isVAlue = index;
                                              });
                                            },
                                              child: isVAlue == index? Icon(Icons.favorite_border,color: Colors.white,):
                                              Icon(Icons.favorite,color: Colors.red),
                                        )
                                        )

                                      ],
                                    ),
                              ],
                            ),
                           //
                           // Text(arrname[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(top: 80),
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 120,
                                    color: Colors.yellow.shade100,
                                    child: RatingBar(
                                      initialRating: 3,
                                      // Set the initial rating value
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      ratingWidget: RatingWidget(
                                        full: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        half: Icon(Icons.star_half),
                                        empty: Icon(Icons.star_border),
                                      ),
                                      itemSize: 20.0,
                                      // Adjust the size of the rating stars
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                      onRatingUpdate: (rating) {
                                        // Handle the rating update if needed
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text('25 Rating')
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Text(arr1name[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),

                        Divider(thickness: 1,color: Colors.black12,)
                      ],
                    ),
                  );
                },),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Appcolor.PrimaryColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('2 item | ₪220',style: TextStyle(color: Colors.white),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => view_cart(),));
                          },
                            child: Text('View Cart',style: TextStyle(color: Colors.white)))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

 var imagename = ['assets/rd.png','assets/rd.png','assets/rd.png','assets/rd.png','assets/rd.png','assets/rd.png'];
 var arrname = ['Paneer Dum Biryani [1/2 Kg]\n Serves 1-2','Veg Hyderabadi Dum Biryani[1/2 Kg]\n Serves 1-2','Egg Dum Biryani [1/2 Kg]\nServes 1-2',
   'Paneer Dum Biryani [1/2 Kg]\n Serves 1-2','Veg Hyderabadi Dum Biryani[1/2 Kg]\n Serves 1-2','Egg Dum Biryani [1/2 Kg]\nServes 1-2'];
 var arr1name = ['₪100','₪120','₪100','₪100','₪120','₪100'];

class ItemData{
  String Name;
  int Counter;
  bool ShouldVisible;

  ItemData({
    required this.Name,
    required this.Counter,
    required this.ShouldVisible
  });
}

List<ItemData> itemData = [
  ItemData(
      Name: 'Shoes 1',
      Counter: 1,
      ShouldVisible: false
  ),
  ItemData(
      Name: 'Shoes 2',
      Counter: 1,
      ShouldVisible: false
  ),
  ItemData(
      Name: 'Shoes 3',
      Counter: 1,
      ShouldVisible: false
  ),
  ItemData(
      Name: 'Shoes 4',
      Counter: 1,
      ShouldVisible: false
  ),
  ItemData(
      Name: 'Shoes 5',
      Counter: 1,
      ShouldVisible: false
  ),
  ItemData(
      Name: 'Shoes 6',
      Counter: 1,
      ShouldVisible: false
  ),
];
