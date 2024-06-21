import 'dart:async';

import 'package:flutter/material.dart';

import 'Appcolor.dart';
import 'Payment_Successful.dart';
class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Payment_Successful()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor:Appcolor.PrimaryColor ,
        body: Center(
          child: CircularProgressIndicator(color: Colors.red,strokeWidth: 5),
        )
    );
  }
}
