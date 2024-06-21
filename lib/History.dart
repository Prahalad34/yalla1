import 'package:flutter/material.dart';

import 'Appcolor.dart';
class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('History',style: TextStyle(fontWeight: FontWeight.bold)),
        leading:  Icon(Icons.arrow_back_ios_rounded,color: Appcolor.PrimaryColor,),
          titleSpacing: -6,
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
                     itemCount: 3,
                     itemBuilder: (context, index) {
                     return Padding(
                       padding: const EdgeInsets.only(bottom: 20),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Row(
                               children: [
                                 Image.asset(imagename[index]),
                                 SizedBox(width: 10,),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(arrname[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                     Text('17, HaHarash Kiryat Shalom,\n Tel Aviv- Yafo, Israel')
                                   ],
                                 )
                               ],
                             ),
                           SizedBox(height: 10,),
                           Divider(thickness: 1,color: Colors.black12,),
                           SizedBox(height: 10,),
                           Text(arr1name[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                           SizedBox(height: 10,),
                           Divider(thickness: 1,color: Colors.black12,),
                           SizedBox(height: 10,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('20 May 2023 at 12:30 PM'),
                               Text(arr2name[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))
                             ],
                           ),
                           SizedBox(height: 10,),
                           Divider(thickness: 1,color: Colors.black12,),
                           SizedBox(height: 10,),
                           Container(
                             height: 40,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(6),
                               border: Border.all(color: Colors.black12)
                             ),
                             child: Center(child: Text('Reorder')),
                           ),
                           SizedBox(height: 15,),
                           Divider(thickness: 3,color: Colors.black12,)

                         ],
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


 var imagename = ['assets/his.png','assets/his1.png','assets/his.png'];
 var arrname = ['Apna Sweets','Shree Gurukripa Hotel','La Pinoz Pizza'];
 var arr1name = ['1 x Food thali','1 x Lunch box','1 x Cheez Pizza'];
 var arr2name = ['₪300','₪200','₪100'];
