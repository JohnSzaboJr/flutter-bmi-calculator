import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enums.dart';
import 'constants.dart';

class GenderChoice extends StatelessWidget {
  final Gender gender;

  const GenderChoice(@required this.gender);

  IconData getIcon() {
    if (this.gender == Gender.male) {
      return FontAwesomeIcons.mars;
    } else if (this.gender == Gender.female) {
      return FontAwesomeIcons.venus;
    }
    return null;
  }

  final displayGender = const {
    Gender.male: 'MALE',
    Gender.female: 'FEMALE',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.getIcon(),
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          displayGender[this.gender],
          style: kLabelStyle,
        ),
      ],
    );
  }
}
