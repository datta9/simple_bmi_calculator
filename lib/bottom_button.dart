import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonName, @required this.onPressed});

  final String buttonName;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Color(0xffeb1555),
        child: Center(
          child: Text(
            buttonName.toUpperCase(),
            style: konstBottomButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: 80.0,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
