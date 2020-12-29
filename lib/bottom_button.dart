import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap,@required this.buttontitle});
  final Function onTap;
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttontitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        color: kbottomcontainercolor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kbottomcontainerheight,
      ),
    );
  }
}