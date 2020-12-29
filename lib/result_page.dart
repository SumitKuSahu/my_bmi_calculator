import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'resusable_card.dart';
import 'bottom_button.dart';

class Resultpage extends StatelessWidget {
  final double bmi = 18.3;
  Resultpage({this.calcbmi, this.bmiresult, this.bmimessage});
  final String calcbmi;
  final String bmiresult;
  final String bmimessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Your Result',
                  style: kresulttitle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactivecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiresult.toUpperCase(),
                      style: kweightstatus,
                    ),
                    Text(calcbmi, style: kbmi),
                    Text(
                      'Normal BMI range:',
                      textAlign: TextAlign.center,
                      style: kbmimessage.copyWith(
                        color: Color(0xff737581),
                      ),
                    ),
                    Text('18.5-25.0 kg/m2',style: kbmimessage.copyWith(fontSize: 20),
                    textAlign: TextAlign.center,),
                    Text(
                      bmimessage,
                      style: kbmimessage,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttontitle: 'RE-CALCULATE')
          ],
        ),
      ),
    );
  }
}
