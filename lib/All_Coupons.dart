import 'package:flutter/material.dart';
import 'package:yalla/Appcolor.dart';
class All_Coupons extends StatefulWidget {
  const All_Coupons({Key? key}) : super(key: key);

  @override
  State<All_Coupons> createState() => _All_CouponsState();
}

class _All_CouponsState extends State<All_Coupons> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        titleSpacing: -10,
        title: Text('All Coupons'),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Appcolor.PrimaryColor,), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                     ListView.builder(
                       physics: ScrollPhysics(),
                       shrinkWrap: true,
                       itemCount: 5,
                       itemBuilder: (context, index) {
                       return Container(
                         margin: EdgeInsets.only(bottom: 20),
                         height: 150,
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
                                   Expanded(child: Text('60% OFF up to ₪120',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                                   Text('Apply',style: TextStyle(color: Appcolor.PrimaryColor),)
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20),
                                 child: Text('Save ₪100 with this code',style: TextStyle(color: Colors.grey),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20,top: 10),
                                 child: Container(
                                   height: 25,
                                   width: 60,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(2),
                                     color: Appcolor.PrimaryColor2,
                                     border: Border.all(color: Colors.grey)
                                   ),
                                   child: Center(child: Text('Flat 50')),
                                 ),
                               ),
                               Divider(thickness: 1,color: Colors.grey,),
                               Center(child: Text('Tap to apply',style: TextStyle(color: Appcolor.PrimaryColor,fontSize: 18),))

                             ],
                           ),
                         ),
                       );
                     },)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

