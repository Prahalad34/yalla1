import 'package:flutter/material.dart';
class Payment_Successful extends StatefulWidget {
  const Payment_Successful({Key? key}) : super(key: key);

  @override
  State<Payment_Successful> createState() => _Payment_SuccessfulState();
}

class _Payment_SuccessfulState extends State<Payment_Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 180,),
          Center(child: Image.asset("assets/success.png",height: 200,width: 200,)),
          SizedBox(height: 10,),
          Text("Your payment was successfull",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
          Text("Thank you for your payment. We will\n be in contact with more details shortly ",style: TextStyle(color: Colors.grey),),

        ],
      ),
    );
  }
}
