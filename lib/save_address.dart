import 'package:flutter/material.dart';
import 'package:yalla/Appcolor.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:yalla/place_order.dart';
class save_address extends StatefulWidget {
  const save_address({Key? key}) : super(key: key);

  @override
  State<save_address> createState() => _save_addressState();
}

class _save_addressState extends State<save_address> {

  int isValue =0;

  final TextEditingController _controller = new TextEditingController();
  var items = ['1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lorem ipsum dolor',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text('Lorem ipsum dolor sit amet elit sed \ndo eiusmod tempor',style: TextStyle(fontSize: 12),)
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                shape: BoxShape.circle
              ),
              child: Icon(Icons.location_on,color: Appcolor.PrimaryColor,)),
        ),
        bottom:  const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1,thickness: 1,),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Enter complete address',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                SizedBox(height: 5,),
                Text('Save address as'),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState((){
                          isValue = 0;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isValue==0? Appcolor.PrimaryColor : Appcolor.PrimaryColor1
                        ),
                        child: Center(child: Text('Home',style: TextStyle(color:isValue==0? Colors.white:null),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isValue = 1;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isValue==1? Appcolor.PrimaryColor : Appcolor.PrimaryColor1
                        ),
                        child: Center(child: Text('Office',style: TextStyle(color:isValue==1? Colors.white:null),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isValue = 2;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isValue==2? Appcolor.PrimaryColor : Appcolor.PrimaryColor1
                        ),
                        child: Center(child: Text('Hotel',style: TextStyle(color:isValue==2? Colors.white:null),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isValue = 3;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isValue==3? Appcolor.PrimaryColor : Appcolor.PrimaryColor1
                        ),
                        child: Center(child: Text('Other',style: TextStyle(color:isValue==3? Colors.white:null),)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Text('Complete address'),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Behind mall, Rishon Lezion 987456, Israel',
                    filled: true,
                    fillColor: Appcolor.PrimaryColor1
                  ),
                ),
                SizedBox(height: 15,),
                Text('Floor'),
                SizedBox(height: 5,),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: '1',
                    filled: true,
                    fillColor: Appcolor.PrimaryColor1,
                    suffixIcon: PopupMenuButton<String>(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      onSelected: (String value) {
                        _controller.text = value;
                      },
                      itemBuilder: (BuildContext context) {
                        return items
                            .map<PopupMenuItem<String>>((String value) {
                          return new PopupMenuItem(
                              child: new Text(value), value: value);
                        }).toList();
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text('Nearby landmark'),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Lorem ipsum dolor sit amet',
                      filled: true,
                      fillColor: Appcolor.PrimaryColor1
                  ),
                ),
               SizedBox(height: 100,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => place_order(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolor.PrimaryColor
                    ),
                    child: Center(child: Text('Save Address',style: TextStyle(color: Colors.white),)),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
