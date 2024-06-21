import 'package:flutter/material.dart';
import 'package:yalla/Loader.dart';

import 'Appcolor.dart';
class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {

  String? gender;



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Payment',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        leading:Icon(Icons.arrow_back_ios_rounded,color: Appcolor.PrimaryColor,),
        titleSpacing: -6,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('1item | ₪100',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                Stack(
                  children: [
                    Image.asset('assets/line.png',height: 60,),
                    Padding(
                        padding: const EdgeInsets.only(left: 20,top: 5),
                        child: Text('Biryani By Kilo | Delivery in 40 mins')),
                    Padding(
                      padding: const EdgeInsets.only(top: 32,left: 20),
                      child: Text('Home | Lorem ipsum dolor sit amet elit sed ...'),
                    )
                  ],
                ),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                Text('Payment method',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Credit/Debit Card',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                    Radio(
                       activeColor: Appcolor.PrimaryColor,
                      value: "Credit/Debit card",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),
                Text('7894 5612 3078 ****'),
                SizedBox(height: 10,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
               Text('+  Add new card',style: TextStyle(color: Appcolor.PrimaryColor),),
                SizedBox(height: 10,),
                Divider(thickness: 1,color: Colors.black12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Google Pay',style: TextStyle(fontSize: 16),),
              Radio(
                activeColor: Appcolor.PrimaryColor,
                value: "Google Pay",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ],
          ),
                Divider(thickness: 1,color: Colors.black12,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Apple Pay',style: TextStyle(fontSize: 16)),
                Radio(
                  activeColor: Appcolor.PrimaryColor,
                  value: "UPI",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ],
            ),
                Divider(thickness: 1,color: Colors.black12,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cash on Delivery ',style: TextStyle(fontSize: 16)),
                Radio(
                  activeColor: Appcolor.PrimaryColor,
                  value: "Net Banking ",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ],
            ),
             //   Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 80,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loader(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Appcolor.PrimaryColor
                    ),
                    child: Center(child: Text('Pay Now',style: TextStyle(color: Colors.white),)),
                  ),
                )

          ]
            ),
          ),
        ),
      ),
    )
    );
  }
}
