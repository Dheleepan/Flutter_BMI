import 'package:flutter/material.dart';
import 'main.dart';
import 'input.dart';

class Result extends StatelessWidget {
  Result({required this.interpretation, required this.bmiResult, required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: Color(0xFF0A0E21),
          title: Text(
            'Your Result',
            style: TextStyle(fontSize: 20.0, fontFamily: 'AkayaTelivigala'),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 110.0),
          color: Color(0xFF0A0E21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Expanded(
                    child: Column(
                      children: <Widget>[

                        Text(
                          resultText,
                          style: TextStyle(
                              fontFamily: 'ArchitectsDaughter',
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),

                        Text(
                          bmiResult,
                          style: TextStyle(
                            fontSize: 90.0,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              interpretation,
                              style: TextStyle(
                                fontFamily: 'ArchitectsDaughter',
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF0A0E33),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {

                  Navigator.pop(context);
                },
                child: Container(
                  child: Center(
                    child: Text(
                      're-Calculate',
                      style: TextStyle(
                          fontSize: 30.0, fontFamily: 'AkayaTelivigala',color: Colors.white),
                    ),
                  ),
                  width: 350.0,
                  height: 90.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFEB1555),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
