import 'package:drink_water_reminder/extra/tutorialbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:numberpicker/numberpicker.dart';

class TutorialCard1 extends StatelessWidget {
  const TutorialCard1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: MediaQuery.of(context).size.height * 0.4,
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FittedBox(
                  child: Text(
                    'Hi,',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                FittedBox(
                    child: Text(
                  "I'm your personal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
                FittedBox(
                    child: Text(
                  "hydration companion",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                ),
                FittedBox(
                    child: Text(
                  'In order to provide tailored hydration advice, I',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )),
                FittedBox(
                    child: Text(
                  "need to get some basic data. And I'll keep this",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )),
                FittedBox(
                    child: Text(
                  'a secret.',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )),
              ],
            ),
          ),
        ),
        TutorialButton(
          text: "LET'S GO",
        ),
      ],
    );
  }
}

class TutorialCard2 extends StatefulWidget {
  TutorialCard2({Key key}) : super(key: key);

  _TutorialCard2State createState() => _TutorialCard2State();
}

class _TutorialCard2State extends State<TutorialCard2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: MediaQuery.of(context).padding.top + 70,
          child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Your Gender',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .4,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FittedBox(
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/avatar_male.png'),
                        radius: 70,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Text(
                      'Male',
                      style: TextStyle(
                          color: Color.fromRGBO(90, 167, 250, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    FittedBox(
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/avatar_female.png'),
                        radius: 70,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Text(
                      'Female',
                      style: TextStyle(
                          color: Color.fromRGBO(215, 215, 215, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        TutorialButton(
          text: 'NEXT',
        )
      ],
    );
  }
}

class TutorialCard3 extends StatefulWidget {
  TutorialCard3({Key key}) : super(key: key);

  _TutorialCard3State createState() => _TutorialCard3State();
}

class _TutorialCard3State extends State<TutorialCard3> {
  var initialVal = 60;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: MediaQuery.of(context).padding.top + 70,
          child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Your Weight',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
        ),
        Positioned(
          top: 250,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Container(
                    width: 200, child: Image.asset('assets/images/weight.jpg')),
                NumberPicker.integer(
                  initialValue: initialVal,
                  itemExtent: 55,
                  minValue: 1,
                  maxValue: 400,
                  onChanged: (val) {
                    setState(() {
                      initialVal = val;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    'KG',
                    style: TextStyle(
                        color: Color.fromRGBO(34, 148, 240, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                )
              ],
            ),
          ),
        ),
        TutorialButton(
          text: 'NEXT',
        )
      ],
    );
  }
}

class TutorialCard4 extends StatefulWidget {
  TutorialCard4({Key key}) : super(key: key);

  _TutorialCard4State createState() => _TutorialCard4State();
}

class _TutorialCard4State extends State<TutorialCard4> {
  var initialValMin = 8;
  var initialValSec = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: MediaQuery.of(context).padding.top + 70,
          child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Wake-up time',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
        ),
        Positioned(
          top: 250,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Container(
                    width: 200, child: Image.asset('assets/images/waking.jpg')),
                NumberPicker.integer(
                  initialValue: initialValMin,
                  itemExtent: 55,
                  minValue: 1,
                  maxValue: 24,
                  onChanged: (val) {
                    setState(() {
                      initialValMin = val;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    ':',
                    style: TextStyle(
                        color: Color.fromRGBO(34, 148, 240, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                NumberPicker.integer(
                  initialValue: initialValSec,
                  itemExtent: 55,
                  minValue: 0,
                  maxValue: 59,
                  onChanged: (val) {
                    setState(() {
                      initialValSec = val;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        TutorialButton(
          text: 'NEXT',
        )
      ],
    );
  }
}

class TutorialCard5 extends StatefulWidget {
  TutorialCard5({Key key}) : super(key: key);

  _TutorialCard5State createState() => _TutorialCard5State();
}

class _TutorialCard5State extends State<TutorialCard5> {
  var initialValMin = 22;
  var initialValSec = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: MediaQuery.of(context).padding.top + 70,
          child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Bedtime',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
        ),
        Positioned(
          top: 250,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Container(
                    width: 200,
                    child: Image.asset('assets/images/sleeping.jpg')),
                NumberPicker.integer(
                  initialValue: initialValMin,
                  itemExtent: 55,
                  minValue: 1,
                  maxValue: 24,
                  onChanged: (val) {
                    setState(() {
                      initialValMin = val;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    ':',
                    style: TextStyle(
                        color: Color.fromRGBO(34, 148, 240, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                NumberPicker.integer(
                  initialValue: initialValSec,
                  itemExtent: 55,
                  minValue: 0,
                  maxValue: 59,
                  onChanged: (val) {
                    setState(() {
                      initialValSec = val;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        TutorialButton(
          text: 'NEXT',
        )
      ],
    );
  }
}
