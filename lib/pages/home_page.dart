import 'package:flutter/material.dart';
import 'package:tik_tok_ui/constant/data_json.dart';
import 'package:tik_tok_ui/theme/colors.dart';
import 'package:tik_tok_ui/widgets/header_home_page.dart';
import 'package:tik_tok_ui/widgets/column_social_icon.dart';
import 'package:tik_tok_ui/widgets/left_panel.dart';
import 'package:tik_tok_ui/widgets/tik_tok_icons.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }  

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
    body:  getBody(),
    );
   
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return 
    RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
        controller: _tabController,
        children: List.generate(items.length, (index) {
          return VideoPlayerItem(
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
        }),
      ),
    );
  }
}

class VideoPlayerItem extends StatefulWidget {
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
  VideoPlayerItem(
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
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  // VideoPlayerController _videoController;
  // bool isShowPlaying = false;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   _videoController = VideoPlayerController.asset(widget.videoUrl)
  //     ..initialize().then((value) {
  //      _videoController.play();
  //       setState(() {
          
  //         isShowPlaying = false;
  //       });
  //     });

      
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _videoController.dispose();

    
  // }
  // Widget isPlaying(){
  //   return _videoController.value.isPlaying && !isShowPlaying  ? Container() : Icon(Icons.play_arrow,size: 80,color: white.withOpacity(0.5),);
  // }

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
                PageView.builder(
                  itemBuilder:(context,index){
            return  Container(

                  height: widget.size.height,
                  width: widget.size.width,
                  decoration: BoxDecoration(color:Colors.pink,
                  //  image:DecorationImage(image: AssetImage("${widget.coverImage}"),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Stack(

                    children: <Widget>[
                      PageView.builder(
                        itemBuilder: (context,index){
                          return  Container(
                             
                            height: 600,width: 500,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                        image:DecorationImage(image: AssetImage("${widget.coverImage}"),fit: BoxFit.fill)
                      ),);
                        }),
                     
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
                );
                  }),
               
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
                              RightPanel(
                                size: widget.size,
                                name:"${widget.name}",
                                likes: "${widget.likes}",
                                comments: "${widget.comments}",
                                shares: "${widget.shares}",
                                profileImg: "${widget.profileImg}",
                                albumImg: "${widget.albumImg}",
                              ),
                                RightPanel(
                                size: widget.size,
                                name:"${widget.name}",
                                likes: "${widget.likes}",
                                comments: "${widget.comments}",
                                shares: "${widget.shares}",
                                profileImg: "${widget.profileImg}",
                                albumImg: "${widget.albumImg}",
                              )
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

class RightPanel extends StatelessWidget {
  final String likes;
  final String comments;
  final String shares;
  final String profileImg;
  final String albumImg;
  final String name;
  const RightPanel({
    Key key,
    @required this.size,
    this.likes,
    this.comments,
    this.shares,
    this.profileImg,
    this.albumImg,
    this.name,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return 
   
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
   Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(color: white),
      // shape: BoxShape.circle,
      image: DecorationImage(
          image: NetworkImage(
          profileImg),
          fit: BoxFit.cover)),

    ),
    SizedBox(width: 10,),
        Container(
          width: 50,
          child: Text(name),
        ),
         SizedBox(width: 130,),
       getIcons(TikTokIcons.chat_bubble, shares, 20.0),
        SizedBox(width: 10,),
       getIcons(TikTokIcons.reply, shares, 20.0),
        SizedBox(width: 10,),
        getIcons(TikTokIcons.chat_bubble, comments, 20.0),
         SizedBox(width: 10,),
        
        //  getIcons(TikTokIcons.chat_bubble, shares, 20.0),
           getIcons(TikTokIcons.heart, likes, 20.0),
        // getAlbum(albumImg)
          ],
        );
    
  }
}
