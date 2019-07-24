import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TutorialButton extends StatelessWidget {
  const TutorialButton({@required String text}) : this.text = text;

  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(89, 178, 246, 1),
              Color.fromRGBO(78, 137, 234, 1)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
