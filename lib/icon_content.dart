import 'package:flutter/material.dart';
import 'constants.dart';
class IconContents extends StatelessWidget {
  IconContents({this.iconz,this.textline});
  final IconData iconz;
  final String textline;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(iconz,
          size: 90,),
        SizedBox(
          height: 15,
        ),
        Text(textline,
          style:ktextstyle)
      ],
    );
  }
}
