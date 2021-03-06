import 'package:flutter/material.dart';
import 'package:dashed_circle/dashed_circle.dart';

class GeneratingProfile extends StatefulWidget {
  GeneratingProfile({Key key}) : super(key: key);

  _GeneratingProfileState createState() => _GeneratingProfileState();
}

class _GeneratingProfileState extends State<GeneratingProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.5 - 70,
            child: DashedCircle(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/avatar_female.png'),
                    radius: 70,
                  ),
                ),
                color: Color.fromRGBO(90, 167, 250, 1)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55,
            left: MediaQuery.of(context).size.width * 0.18,
            child: Text(
              'Generating your hydration plan...',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(bottom: 0, child: BottomAnimatedContainer())
        ],
      ),
    );
  }
}

class BottomAnimatedContainer extends StatefulWidget {
  BottomAnimatedContainer({Key key}) : super(key: key);

  _BottomAnimatedContainerState createState() =>
      _BottomAnimatedContainerState();
}

class _BottomAnimatedContainerState extends State<BottomAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      color: Color.fromRGBO(90, 167, 250, 1),
    );
  }
}
