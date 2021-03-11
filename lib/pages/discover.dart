import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tik_tok_ui/constant/data_json.dart';
import 'package:tik_tok_ui/theme/colors.dart';
import 'package:tik_tok_ui/widgets/header_home_page.dart';
import 'package:tik_tok_ui/widgets/column_social_icon.dart';
import 'package:tik_tok_ui/widgets/left_panel.dart';
import 'package:tik_tok_ui/widgets/tik_tok_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';
class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
     return 
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.double_arrow_rounded,color: Colors.black,), onPressed: (){}),
        actions: [IconButton(onPressed: (){},icon: Icon(Icons.ac_unit,color: Colors.black,),)],
      ),
    body:  getBodyGrid(),
    );
  }
   Widget getBodyGrid() {
    var size = MediaQuery.of(context).size;
    return 
    RotatedBox(
      quarterTurns: 1,
      child:
      
      
      ListView.builder(

        itemCount:items.length,
        itemBuilder: (context,index){
 return GridViewItem(
            videoUrl: items[index]['videoUrl'],
            coverImage: items[index]['coverImage'],
            size: size,
            name: items[index]['name'],
            caption: items[index]['caption'],
            songName: items[index]['songName'],
            profileImg: items[index]['profileImg'],
            likes: items[index]['likes'],
            comments: items[index]['comments'],
            shares: items[index]['shares'],
            albumImg: items[index]['albumImg'],
          );
        },
         
         
        ),
     
    );
  }
   
}
class GridViewItem extends StatefulWidget {
  final String coverImage;
  final String videoUrl;
  final String name;
  final String caption;
  final String songName;
  final String profileImg;
  final String likes;
  final String comments;
  final String shares;
  final String albumImg;
   GridViewItem(
      {Key key,
      @required this.size,
      this.name,
      this.caption,
      this.songName,
      this.profileImg,
      this.likes,
      this.comments,
      this.shares,
      this.albumImg,
      this.videoUrl,
      this.coverImage
      })
      : super(key: key);

  final Size size;
  @override
  _GridViewItemState createState() => _GridViewItemState();
}

class _GridViewItemState extends State<GridViewItem> {
  @override
  Widget build(BuildContext context) {
    return 
     RotatedBox(
      quarterTurns: -1,
      child: Container(
        color:Colors.white,
          height: widget.size.height,
          width: widget.size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                        child: Stack(
              children: <Widget>[
                
        Container(

                  height: widget.size.height,
                  width: widget.size.width,
                  decoration: BoxDecoration(color:Colors.pink,
                  //  image:DecorationImage(image: AssetImage("${widget.coverImage}"),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Stack(

                    children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                                              child: Container(
                          height: 130,

                          width:Get.width,
                          decoration: BoxDecoration(
                            color:Colors.black,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                              child: Container(
                                  height:40,
                                  width:Get.width,
                                  decoration:BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)
                                    
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
        prefixIcon: IconButton(
          icon:
           Icon(
             Icons.search,
            color: Colors.black,
          ),
          onPressed: (){},
         
        ),
        hintText: "Search",
        fillColor: Colors.white24,
        filled: true,
     
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:20.0,top:8.0),
                                child: Text("Discover",style: TextStyle(color:Colors.white,fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                      ),
                  

                      Positioned(
                        top: 120,
                        left: 0,
                        right: 0,

bottom: 0,                   
                       
                                              child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.0,
                            crossAxisCount: 3,
                            crossAxisSpacing: 2.0,
                            mainAxisSpacing: 2.0
                            ), itemBuilder: (context,i){
                            return    Container(
                               
                              height: 600,width: 500,decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage("${widget.coverImage}"),fit: BoxFit.fill)
                        ),);
                          },),
                      ),
                      // PageView.builder(
                      //   itemBuilder: (context,index){
                      //     return 
                      //      Container(
                             
                      //       height: 600,width: 500,decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(20),
                      //   image:DecorationImage(image: AssetImage("${widget.coverImage}"),fit: BoxFit.fill)
                      // ),);
                      //   }),
                     
                      // VideoPlayer(_videoController),
                      // Center(
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //     ),
                      //     child: isPlaying(),
                      //  ),
                      // )
                    ],
                  ),
                ),
                  
               
                Container(
                  height: widget.size.height,
                  width: widget.size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 20, bottom: 10),
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // HeaderHomePage(),
                          Expanded(
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // LeftPanel(
                              //   size: widget.size,
                              //   name: "${widget.name}",
                              //   caption: "${widget.caption}",
                              //   songName: "${widget.songName}",
                              // ),
                              // RightPanel(
                              //   size: widget.size,
                              //   name:"${widget.name}",
                              //   likes: "${widget.likes}",
                              //   comments: "${widget.comments}",
                              //   shares: "${widget.shares}",
                              //   profileImg: "${widget.profileImg}",
                              //   albumImg: "${widget.albumImg}",
                              // ),
                              //   RightPanel(
                              //   size: widget.size,
                              //   name:"${widget.name}",
                              //   likes: "${widget.likes}",
                              //   comments: "${widget.comments}",
                              //   shares: "${widget.shares}",
                              //   profileImg: "${widget.profileImg}",
                              //   albumImg: "${widget.albumImg}",
                              // )
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}