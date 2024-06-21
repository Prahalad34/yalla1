import 'package:flutter/material.dart';
import 'package:yalla/All_Coupons.dart';
import 'package:yalla/add_address.dart';

import 'Appcolor.dart';
class view_cart extends StatefulWidget {
  const view_cart({Key? key}) : super(key: key);

  @override
  State<view_cart> createState() => _view_cartState();
}

class _view_cartState extends State<view_cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Biryani By Kilo',style: TextStyle(fontWeight: FontWeight.bold)),
        leading:Icon(Icons.arrow_back_ios_rounded,color: Appcolor.PrimaryColor,),
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
                ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(imagename[index]),
                      title: Text(arrname[index],style: TextStyle(fontSize: 15),),
                      subtitle: Text(arr1name[index],style: TextStyle(color: Appcolor.PrimaryColor),),
                      trailing: Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: Appcolor.PrimaryColor)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('-',style: TextStyle(color: Appcolor.PrimaryColor),),
                            SizedBox(width: 5,),
                            Text('1',style: TextStyle(color: Appcolor.PrimaryColor),),
                            SizedBox(width: 5,),
                            Text('+',style: TextStyle(color: Appcolor.PrimaryColor),)
                          ],
                        ),
                      )
                    );
                  },),
                SizedBox(height: 10,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                Text('+  Add more items',style: TextStyle(color: Appcolor.PrimaryColor),),
                SizedBox(height: 10,),
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolor.PrimaryColor2,
                    border: Border.all(color: Appcolor.PrimaryColor)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                               Image.asset('assets/Group.png',color: Appcolor.PrimaryColor,),
                            SizedBox(width: 5,),
                            Expanded(child: Text('NEW50',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                            Text('Apply',style: TextStyle(color: Appcolor.PrimaryColor),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Save ₪100 more on this order',style: TextStyle(color: Colors.grey),),
                        ),
                        Divider(thickness: 1,color: Colors.grey,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => All_Coupons(),));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('View more coupons',style: TextStyle(color: Colors.grey),),
                              Icon(Icons.arrow_forward_ios,size: 12,color: Colors.grey)
                            ],
                          ),
                        )
                        
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 10,),
                Text('Offers & Benefit ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              hintText: 'YALLA40',
                              filled: true,
                              fillColor: Appcolor.PrimaryColor1
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Appcolor.PrimaryColor
                          ),
                          child: Center(child: Text('Apply',style: TextStyle(color: Colors.white),)),
                        )
                      ],
                    ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                Text('Bill details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Item total'),
                    Text('2',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal'),
                    Text('₪220',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery fee | 0.5 kms'),
                    Text('₪10',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('GST'),
                    Text('₪10',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Item discount'),
                    Text('₪40',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total'),
                    Text('₪200',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Appcolor.PrimaryColor)),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: (){
                          showModalBottomSheet(
                            backgroundColor: Colors.white,
                              context: context,
                              builder: (context){
                                return Container(
                                    height: 440,
                                  //  width: 360,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only( topLeft:  Radius.circular(25.0),
                                        topRight:  Radius.circular(25.0),)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20,right: 20),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('Choose  an delivery address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                                InkWell(
                                                  onTap: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundColor: Colors.white,
                                                    child: Icon(Icons.clear,color: Colors.black,),
                                                  ),
                                                )

                                              ],
                                            ),
                                          ),
                                          ListView.builder(
                                            physics: ScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              return Column(
                                                children: [
                                                  ListTile(
                                                    leading: CircleAvatar(
                                                      radius: 25,
                                                        backgroundColor: Colors.white,
                                                        child: Icon(Icons.location_on,color: Appcolor.PrimaryColor,)),
                                                    title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                                    subtitle: Text('Lorem ipsum dolor sit amet elit...',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                                    trailing: Icon(Icons.arrow_forward_ios_outlined,size: 14,),
                                                  )
                                                ],
                                              );
                                          },)
                                        ],
                                      ),
                                    ),

                                );
                              });
                        },
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Appcolor.PrimaryColor)
                          ),
                          child: Center(child: Text('Select Address',style: TextStyle(color: Appcolor.PrimaryColor),)),
                        ),
                        // style: ButtonStyle(
                        //   side: MaterialStateProperty.all(
                        //     const BorderSide(
                        //       color: Appcolor.PrimaryColor,
                        //       width: 1,
                        //     ),
                        //   ),
                        //   shape: MaterialStateProperty.all(
                        //     RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(6),
                        //     ),
                        //   ),
                        // ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => add_address(),));
                        },
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Appcolor.PrimaryColor
                              //border: Border.all(color: Appcolor.PrimaryColor)
                          ),
                          child: Center(child: Text('Add Address',style: TextStyle(color: Colors.white),)),
                        ),
                      )
                    ],
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

var imagename = ['assets/po.png','assets/po.png'];
var arrname = ['Paneer Dum Biryani','Veg Hyderabadi Dum Biryani'];
var arr1name = ['₪100','₪120'];

