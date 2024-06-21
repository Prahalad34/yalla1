import 'package:flutter/material.dart';
import 'package:yalla/track_order.dart';

import 'Appcolor.dart';
class My_Orders extends StatefulWidget {
  const My_Orders({Key? key}) : super(key: key);

  @override
  State<My_Orders> createState() => _My_OrdersState();
}

class _My_OrdersState extends State<My_Orders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('My Orders',style: TextStyle(fontWeight: FontWeight.bold)),
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
                  ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/myorder.png',fit: BoxFit.cover,),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Biryani By Kilo',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  Text('17, HaHarash Kiryat Shalom,\nTel Aviv- Yafo, Israel'),
                                ],
                              )
                            ],
                          ),
                          Divider()
                        ],
                      ),
                    );
                  },),
                Divider(
                  thickness: 1,color: Colors.black12,
                ),
                SizedBox(height: 10,),
                Text('1 x Paneer Dum Biryani'),
                Text('1 x Veg Hyderabadi Dum Biryani'),
                SizedBox(height: 10,),
                Divider(
                  thickness: 1,color: Colors.black12,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your food is preparing'),
                    Text('₪200',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 10,),
                Divider(
                  thickness: 1,color: Colors.black12,
                ),
                SizedBox(height: 80,),
                GestureDetector(
                  onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => track_order(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolor.PrimaryColor
                    ),
                    child: Center(child: Text('Track order',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
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
