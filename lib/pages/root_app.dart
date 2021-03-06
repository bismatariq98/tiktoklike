import 'package:flutter/material.dart';
import 'package:tik_tok_ui/pages/discover.dart';
import 'package:tik_tok_ui/pages/home_page.dart';
import 'package:tik_tok_ui/theme/colors.dart';
import 'package:tik_tok_ui/widgets/tik_tok_icons.dart';
import 'package:tik_tok_ui/widgets/upload_icon.dart';
// import 'package:camera/camera.dart';
import 'package:tik_tok_ui/pages/profile_page.dart';
class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }
  Widget getBody(){
    return IndexedStack(
       
      index: pageIndex,
      children: <Widget>[
        HomePage(),
         Discover(),
        // Center(
        //   child: Text("Discover",style: TextStyle(
        //     color: black,
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold
        //   ),),
        // ),
        Center(
          child: Text("Upload",style: TextStyle(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
        Center(
          child: Text("All Activity",style: TextStyle(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
        ProfilePage(),
        // Center(
        //   child: Text("Profile",style: TextStyle(
        //     color: black,
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold
        //   ),)
        //   ,
        // ),
      ],
    );
  }

  Widget getFooter() {
    List bottomItems = [
      {"icon":TikTokIcons.home, "label": "Home", "isIcon": true},
      {"icon": TikTokIcons.search, "label": "Discover", "isIcon": true},
      {"icon": "", "label": "", "isIcon": false},
      {"icon": TikTokIcons.messages, "label": "Inbox", "isIcon": true},
      {"icon": TikTokIcons.profile, "label": "Me", "isIcon": true}
    ];
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(color: appBgColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length,(index){
            return bottomItems[index]['isIcon'] ? 
            InkWell(
              onTap: (){
                selectedTab(index);
              },
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    
                   bottomItems[index]['icon'],
                    color: pageIndex == index ?Colors.black :Colors.orange,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      bottomItems[index]['label'],
                      style: TextStyle( color: pageIndex == index?Colors.black:Colors.orange, fontSize: 10),
                    ),
                  )
                ],
              ),
            ) : 
            InkWell(
              onTap: (){
                selectedTab(index);
              },
              child: UploadIcon()
              );
          }),
        ),
      ),
    );
  }
  selectedTab(index){
    setState(() {
      pageIndex = index;
    });
  }
}


