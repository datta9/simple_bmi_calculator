import 'package:flutter/material.dart';

import 'constants.dart';

class MaleFemaleIcons extends StatelessWidget {
  MaleFemaleIcons({@required this.icon, @required this.genderName});

  final IconData icon;
  final String genderName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 10.0),
        Text(
          genderName,
          style: konstTitleTextStyle,
        )
      ],
    );
  }
}
