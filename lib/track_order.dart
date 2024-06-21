import 'package:flutter/material.dart';
class track_order extends StatefulWidget {
  const track_order({Key? key}) : super(key: key);

  @override
  State<track_order> createState() => _track_orderState();
}

class _track_orderState extends State<track_order> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:SingleChildScrollView(
      child:Column(
        children: [
              Image.asset('assets/track-order.png',fit: BoxFit.cover,)
        ],
      ),
      )
    ));
  }
}
