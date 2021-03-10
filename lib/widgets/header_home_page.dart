import 'package:flutter/material.dart';
import 'package:tik_tok_ui/theme/colors.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 50,
      decoration: BoxDecoration(
        color:Colors.white
      ),
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Following",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "|",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "For You",
            style: TextStyle(
                color: white, fontSize: 17, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}