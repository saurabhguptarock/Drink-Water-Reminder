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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                FittedBox(
                    child: Text(
                  "I'm your personal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
                FittedBox(
                    child: Text(
                  "hydration companion",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                FittedBox(
                    child: Text(
                  'In order to provide tailored hydration advice, I',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )),
                FittedBox(
                    child: Text(
                  "need to get some basic data. And I'll keep this",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )),
                FittedBox(
                    child: Text(
                  'a secret.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )),
              ],
            ),
          ),
        ),
        Positioned(
          left: 40,
          right: 40,
          bottom: 50,
          child: TutorialButton(
            text: "LET'S GO",
          ),
        )
      ],
    );
  }
}
