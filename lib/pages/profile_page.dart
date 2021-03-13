

import 'package:tik_tok_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tik_tok_ui/constant/text_color.dart';

import 'package:tik_tok_ui/constant/data_json.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.double_arrow_rounded,color: Colors.black,), onPressed: (){}),
        actions: [IconButton(onPressed: (){},icon: Icon(Icons.ac_unit,color: Colors.black,),)],
        
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: SingleChildScrollView(
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
       Container(
         width: Get.width,
         height: 270,
         child: Stack(children: [
         Positioned(
             top: 0,
             left: 0,
             right: 0,
             child: Container(
               height: 200,
               width: Get.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                   image: AssetImage("assets/love.jpg"),
                   fit: BoxFit.cover
                   
                   ),
               ), 
             ),
             ),
             Positioned(
               top: 120,
               left: 20,
              
               child:Container(
                 width: 120,
                 height: 120,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width:1.0,color:Colors.white),
                   image: DecorationImage
                   (image: AssetImage("assets/love.jpg"),fit: BoxFit.cover)),
                 ) ),
                  Positioned(
               top: 150,
               left: 150,
              
               child:Container(
                 width: 200,
                 height: 40,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF01181C),

                 ),
                 child: Center(child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 17),)),
                 ),
                 ),
                  Positioned(
               top: 200,
               left: 160,
              
               child:Container(
                //  width: 200,
                //  height: 40,
                
                 child: Column(
                   children: [
                     Text("Edit Profile Profile",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                       Text("@Edit Profile",style: TextStyle(color: Colors.black,fontSize: 17,),),
                   ],
                 ),
                 ),
                 ),
                 Positioned(
                   top:200,
                   left:330,
                   child:IconButton(icon:Icon(Icons.ac_unit_rounded), onPressed: (){}) ,)


       ],
       ),
       ),
       Text("Co-Founder kahjhsdjkhakjshdkjahsdkjashdkjhkj"),
       Text("link link link link",style: TextStyle(color: Colors.blue),),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 5.0),
         child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("209 Followers",style: textStyle,),
               Text("Following",style: textStyle,)
             ]),
       ),
       Container(
         height: 100,
         width: Get.width,
         child: ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount:7,
             itemBuilder: (context,i){
               return Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:3.0),
                     child: Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/blackmen.png"),fit: BoxFit.cover)),
                     ),
                   ),
                   Text("data")
                 ],
               );
             }),
       ),
       Text("136 Posts",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
         
                               Container(
                                 width: Get.width,
                                 height: 500,
                                 child: GridView.builder(
                                   itemCount: 7,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.0,
                      crossAxisCount: 3,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0
                      ), itemBuilder: (context,i){
                      return    Container(
                         
                        height: 1200,width: 500,decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                    image:DecorationImage(image: AssetImage("assets/blackmen.png"),fit: BoxFit.cover)
                  ),);
                    },),
                               ),
              ],
              
              ),
          ),
        ),
    );
  }
}