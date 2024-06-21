import 'package:flutter/material.dart';
import 'package:yalla/Appcolor.dart';
import 'package:yalla/Customer_Support.dart';
import 'package:yalla/Favorite.dart';
import 'package:yalla/History.dart';
import 'package:yalla/Login.dart';
import 'package:yalla/My_Orders.dart';
import 'package:yalla/My_Profile.dart';
import 'package:yalla/Privacy_Policy.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  bool _isShown = true;

  void _delete(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const  CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 22,
             // backgroundColor: Colors.red.shade50,
              child: Icon(Icons.logout,color: Appcolor.PrimaryColor,),
            ),
            content: const Text('Are you sure you wantto Logout?',style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
            actions: [
              // The "Yes" button
              TextButton(
                  onPressed: () {
                    // Remove the box
                    // Close the dialog
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Appcolor.PrimaryColor)
                      ),
                      child: Center(child: const Text('No')))),
              TextButton(
                  onPressed: () {
                    // Close the dialog
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  },
                  child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Appcolor.PrimaryColor
                      ),
                      child: Center(child: const Text('Yes'))))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Center(child: Image.asset('assets/pro.png')),
                SizedBox(height: 5,),
                Center(child: Text('Vinson Cooper',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                SizedBox(height: 50,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => My_Profile(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red.shade50,
                        child: Icon(Icons.account_circle,color: Appcolor.PrimaryColor,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text('My Profile',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => My_Orders(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red.shade50,
                        child: Icon(Icons.shopping_bag_outlined,color: Appcolor.PrimaryColor,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text('My Orders',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red.shade50,
                        child: Icon(Icons.favorite,color: Appcolor.PrimaryColor,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text('Favorite',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => History(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red.shade50,
                        child: Icon(Icons.history,color: Appcolor.PrimaryColor,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text('History',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy_Policy(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red.shade50,
                        child: Icon(Icons.privacy_tip,color: Appcolor.PrimaryColor,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text('Privacy Policy',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Customer_Support(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red.shade50,
                        child: Icon(Icons.phone_forwarded,color: Appcolor.PrimaryColor,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text('Contact Us',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 1,color: Colors.black12,),
                SizedBox(height: 15,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.red.shade50,
                      child: Icon(Icons.logout,color: Appcolor.PrimaryColor,),
                    ),
                    TextButton(
                      // This button is enabled only if _isShown = true
                        onPressed: _isShown == true ? () => _delete(context) : null,
                        child: const Text('Logout',style: TextStyle(color: Colors.black),)),

                  ],
                ),
                SizedBox(height: 25,),
                Center(child: Image.asset('assets/login.png'))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
