import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'second.dart';
import 'bottom.dart';
import 'dart:math';

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  bool x = false;
  int height = 180;
  int weight = 70;
  int age = 20;
  double bmi = 0.0;

  String calculateBMI(double bmi) {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult(double bmi) {
    bmi = weight / pow(height / 100, 2);
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(double bmi) {
    bmi = weight / pow(height / 100, 2);
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E33),
        elevation: 10.0,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 20.0, fontFamily: 'AkayaTelivigala'),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        x = !x;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.male_outlined,
                              size: 150.0, semanticLabel: 'Male'),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              fontFamily: 'ArchitectsDaughter',
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: x ? Color(0xFF0A0E28) : Color(0xFF0A0E33),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),


                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        x = !x;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.female_outlined,
                              size: 150.0, semanticLabel: 'female'),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              fontFamily: 'ArchitectsDaughter',
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: x ? Color(0xFF0A0E33) : Color(0xFF0A0E28),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                print('left');
              },
              child: Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF0A0E33),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        'Height',
                        style: TextStyle(
                          fontFamily: 'AkayaTelivigala',
                          color: Color(0xFF8D8E98),
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(),
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center),
                          Text('cm',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTickMarkColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          onChanged: (double newVAlue) {
                            setState(() {
                              height = newVAlue.round();
                            });
                          },
                        ),
                      )
                    ],
                  )),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                      ;
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF0A0E33),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'AkayaTelivigala',
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      weight = weight + 1;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 10.0,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(24),
                                    primary: Color(0xFF0A0E45),
                                    shadowColor: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      weight = weight - 1;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 10.0,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(24),
                                    primary: Color(0xFF0A0E45),
                                    shadowColor: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF0A0E33),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'AkayaTelivigala',
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      age = age + 1;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 10.0,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(24),
                                    primary: Color(0xFF0A0E45),
                                    shadowColor: Colors.black,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      age = age - 1;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 10.0,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(24),
                                    primary: Color(0xFF0A0E45),
                                    shadowColor: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              print('enterd');

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(interpretation: getInterpretation(bmi), bmiResult: calculateBMI(bmi), resultText: getResult(bmi)),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(fontSize: 30.0, fontFamily: 'Pacifico',color: Colors.white),
                ),
              ),
              width: 350.0,
              height: 60.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFFEB1555),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
