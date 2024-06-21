import 'package:flutter/material.dart';
import 'package:yalla/payment.dart';

import 'Appcolor.dart';
class place_order extends StatefulWidget {
  const place_order({Key? key}) : super(key: key);

  @override
  State<place_order> createState() => _place_orderState();
}

class _place_orderState extends State<place_order> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(''),
        leading:Icon(Icons.arrow_back_ios_rounded,color: Appcolor.PrimaryColor,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text('Biryani By Kilo',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                  return ListTile(
                  leading: Image.asset(imagename[index]),
                    title: Text(arrname[index]),
                    subtitle: Text(arr1name[index],style: TextStyle(color: Appcolor.PrimaryColor),),
                  );
                },),
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
                SizedBox(height: 100,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => payment(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Appcolor.PrimaryColor
                    ),
                    child: Center(child: Text('Place order',style: TextStyle(color: Colors.white),)),
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
 var arrname = ['Paneer Dum Biryani ₪100','Veg Hyderabadi Dum Biryani ₪120'];
 var arr1name = ['₪100','₪120'];
