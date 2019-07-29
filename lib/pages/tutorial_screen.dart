import 'package:flutter/material.dart';
import 'tutorial_card.dart';

class TutorialScreen extends StatefulWidget {
  TutorialScreen({Key key}) : super(key: key);

  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: TutorialCard1(),
    );
  }
}
