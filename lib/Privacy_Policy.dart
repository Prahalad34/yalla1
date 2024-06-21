import 'package:flutter/material.dart';

import 'Appcolor.dart';
class Privacy_Policy extends StatefulWidget {
  const Privacy_Policy({Key? key}) : super(key: key);

  @override
  State<Privacy_Policy> createState() => _Privacy_PolicyState();
}

class _Privacy_PolicyState extends State<Privacy_Policy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy',style: TextStyle(fontWeight: FontWeight.bold)),
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
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aenean pharetra magna ac placerat vestibulum. Suspendisse ultrices gravida dictum fusce ut placerat orci nulla pellentesque.'),
                SizedBox(height: 20,),
                Text('At ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Lectus arcu bibendum at varius vel pharetra vel turpis. Pharetra magna ac placerat vestibulum lectus mauris. Ac felis donec et odio. Sit amet consectetur adipiscing elit duis tristique.'),
                SizedBox(height: 20,),
                Text('Sit amet dictum sit amet. Aenean et tortor at risus viverra adipiscing at in tellus. Vel eros donec ac odio tempor orci dapibus ultrices. Fames ac turpis egestas integer eget aliquet nibh praesent. Augue ut lectus arcu bibendum at varius. Blandit libero volutpat sed cras. '),
                SizedBox(height: 20,),
                Text('Tellus in metus vulputate eu scelerisque felis. Eget magna fermentum iaculis eu non diam. Magna ac placerat vestibulum lectus. Nunc id cursus metus aliquam eleifend mi. Eu lobortis elementum nibh tellus. Cum sociis natoque penatibus et.'),
                SizedBox(height: 20,),
                Text('Tempus urna et pharetra pharetra massa massa ultricies mi. Tellus rutrum tellus pellentesque eu tincidunt. Proin sed libero enim sed faucibus turpis in eu mi. Lacinia quis vel eros donec ac odio tempor.'),
                SizedBox(height: 20,),
                Text('Mus mauris vitae ultricies leo. At quis risus sed vulputate odio ut enim blandit. Pharetra massa massa ultricies mi quis hendrerit. Morbi enim nunc faucibus a pellentesque.')

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
