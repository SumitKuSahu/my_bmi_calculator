import 'package:flutter/material.dart';

class RoundIconbutton extends StatelessWidget {
  RoundIconbutton({@required this.icon, @required this.onpressed});
  final IconData icon;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 0,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
