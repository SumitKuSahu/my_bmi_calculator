import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi_calculator/result_page.dart';
import 'icon_content.dart';
import 'resusable_card.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'icon_button.dart';
import 'calulator_brain.dart';

enum Gendertype { male, female }

// ignore: camel_case_types
class Input_page extends StatefulWidget {
  Input_page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Input_pageState createState() => _Input_pageState();
}

// ignore: camel_case_types
class _Input_pageState extends State<Input_page> {
  Gendertype gender;
  int height = 180;
  int weight = 60;
  int age = 18;

  // Color malecardcolor=inactivecardcolor;
  // Color femalecardcolor=inactivecardcolor;
  //male=1  female=2
  // void updatecolor(Gendertype gender)
  //  {
  //   if(gender==Gendertype.male)
  //     {
  //       if(malecardcolor==inactivecardcolor)
  //         {
  //           malecardcolor=activecardcolor;
  //           femalecardcolor=inactivecardcolor;
  //         }
  //       else
  //         {
  //           malecardcolor=inactivecardcolor;
  //         }
  //     }else
  //       {
  //         if(gender==Gendertype.female)
  //           {
  //             if(femalecardcolor==inactivecardcolor)
  //             {
  //               femalecardcolor=activecardcolor;
  //               malecardcolor=inactivecardcolor;
  //             }
  //             else
  //             {
  //               femalecardcolor=inactivecardcolor;
  //             }
  //           }
  //       }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = Gendertype.male;
                      });
                    },
                    colour: gender == Gendertype.male
                        ? kactivecardcolor
                        : kinactivecardcolor,
                    cardchild: Center(
                      child: IconContents(
                        iconz: FontAwesomeIcons.mars,
                        textline: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          gender = Gendertype.female;
                        });
                      },
                      cardchild: Center(
                        child: IconContents(
                            iconz: FontAwesomeIcons.venus, textline: 'FEMALE'),
                      ),
                      colour: gender == Gendertype.female
                          ? kactivecardcolor
                          : kinactivecardcolor),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: ktextstyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kbigtextfont,
                      ),
                      Text(
                        'cm',
                        style: ktextstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xff888993),
                      thumbColor: kbottomcontainercolor,
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        }),
                  )
                ],
              ),
              colour: kactivecardcolor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'WEIGHT',
                          style: ktextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kbigtextfont,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconbutton(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconbutton(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    colour: kactivecardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'AGE',
                          style: ktextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: kbigtextfont,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconbutton(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconbutton(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    colour: kactivecardcolor,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(onTap: (){

            CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Resultpage(
                  calcbmi: calc.calculateBmi(),
                  bmiresult: calc.bmiResult(),
                  bmimessage: calc.bmimessage(),
                ),),);
          },buttontitle: 'CALCULATE',)
        ],
      ),
    );
  }
}



