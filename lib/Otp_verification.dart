import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:yalla/Home.dart';
import 'package:yalla/Home1.dart';

import 'Appcolor.dart';
class Otp_verification extends StatefulWidget {
  const Otp_verification({Key? key}) : super(key: key);

  @override
  State<Otp_verification> createState() => _Otp_verificationState();
}

class _Otp_verificationState extends State<Otp_verification> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 35,),
                Center(child: Image.asset('assets/login.png')),
                SizedBox(height: 45,),
                Text('OTP verification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 2,),
                Text('We’ve send you the verification code on'),
                SizedBox(height: 2,),
                Text('+972-89745 61230',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(height: 25,),
                PinCodeTextField(
                  pinBoxColor: Appcolor.PrimaryColor1,
                  controller: controller,
                  maxLength: 4, // Set the length of the OTP
                  autofocus: true,
                  wrapAlignment: WrapAlignment.spaceBetween,
                  pinBoxWidth: 56,
                  pinBoxHeight: 50,
                  pinBoxRadius: 8,
                  pinBoxBorderWidth: 1,
                  pinBoxOuterPadding: EdgeInsets.symmetric(horizontal: 15),

                  onDone: (text) {
                    // This callback is triggered when the user enters the complete OTP
                    // print("OTP Entered: $text");
                  },
                ),
                SizedBox(height: 35,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home1(),));
                  },
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolor.PrimaryColor
                      ),
                      child: Center(child: Text('Verify',style: TextStyle(color: Colors.white),))),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t receive OTP? '),
                    Text('Resend',style: TextStyle(color: Appcolor.PrimaryColor),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
