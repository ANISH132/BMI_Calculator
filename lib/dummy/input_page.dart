import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'Icon_content.dart';
import '../constants.dart';
import 'results_page.dart';

import 'bottom_button.dart';
import 'round_icon_button.dart';

// const bottomContainerHeight = 80.0;
//
// const activeCardColor = Color(0xFF1D1E33);
// const inactiveCardColor = Color(0xFF111328);
//
// const bottomContainerColor = 0xFFEB1555;

//Enumerate
enum Gender { NULL, MALE, FEMALE }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.NULL;
  int height = 180;
  int weight = 60;
  int age = 20;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // void updateColor(Gender selected){
  //   if (selected == Gender.MALE) {
  //     maleCardColor = activeCardColor;
  //     femaleCardColor = inactiveCardColor;
  //     if (maleCardColor == inactiveCardColor){
  //       print('male');
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else{
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (selected == Gender.FEMALE) {
  //     if (femaleCardColor == inactiveCardColor){
  //       print('female');
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else{
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        // body: const Center(
        //   child: Text('Body Text'),
        // ),
        // floatingActionButton: Theme(
        //   data: ThemeData.light(),
        //   child: FloatingActionButton(
        //
        //     child: Icon(Icons.add),
        //     onPressed: null,
        //   ),
        // ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      // child: GestureDetector(
                      //   onTap: () {
                      //     setState(() {
                      //       selectedGender = Gender.MALE;
                      //     });
                      //   },
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.MALE;
                          });
                        },
                        keyColour: selectedGender == Gender.MALE
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: IconContent(
                          label: 'Male',
                          icon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                    Expanded(
                      // child: GestureDetector(
                      //   onTap: () {
                      //     setState(() {
                      //       selectedGender = Gender.FEMALE;
                      //     });
                      //   },

                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.FEMALE;
                          });
                        },
                        keyColour: selectedGender == Gender.FEMALE
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: IconContent(
                            label: 'Female', icon: FontAwesomeIcons.venus),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  keyColour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(), style: kNumberTextStyle),
                          Text(
                            ' cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x29eb1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          // activeColor: Colors.white,
                          inactiveColor: Color(0xFF8D8e98),
                          thumbColor: Color(0xFFeb1555),
                          // divisions: 1,
                          onChanged: (double newValue) {
                            // print(newValue);
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        keyColour: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight -= 1;
                                      // print(weight);
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        keyColour: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[
                            Text('AGE', style: kLabelTextStyle,),
                            Text(age.toString(),style: kNumberTextStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                ),
                                SizedBox( width: 10.0,),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),

                              ],
                            )
                          ],

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BottomButton(buttonTitle: 'CALCULATE',
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>ResultsPage(),),);

                },
              ),
            ]));
  }
}

