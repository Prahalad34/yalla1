import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:yalla/Appcolor.dart';
import 'package:yalla/Otp_verification.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                Text('Phone number',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 2,),
                Text('Enter your phone number to verify account'),
                SizedBox(height: 25,),
                IntlPhoneField(
                  flagsButtonPadding: const EdgeInsets.all(8),
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: const InputDecoration(

                    filled: true,
                    fillColor: Appcolor.PrimaryColor1,
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),bottomRight: Radius.circular(10)
                    ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none
                      )
                    ),
                  ),
                  initialCountryCode: 'IN',

                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                SizedBox(height: 100,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Otp_verification(),));
                  },
                  child: Container(
                    height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Appcolor.PrimaryColor
                      ),
                      child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),))),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
