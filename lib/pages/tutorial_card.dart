import 'package:drink_water_reminder/extra/tutorialbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

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
          child: Row(
            children: <Widget>[],
          ),
        ),
        TutorialButton(
          text: 'NEXT',
        )
      ],
    );
  }
}
