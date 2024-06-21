import 'package:flutter/material.dart';

import 'Appcolor.dart';
class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Favorite',style: TextStyle(fontWeight: FontWeight.bold)),
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
               // Text('All Restaurants Delivering Biryani',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 15,),
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
                             // Navigator.push(context, MaterialPageRoute(builder: (context) => restaurant_details(),));
                            },
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(imagename[index]),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 72,top: 3),
                                      child: Icon(Icons.favorite,color: Colors.red,),
                                    )
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
                  },)
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

