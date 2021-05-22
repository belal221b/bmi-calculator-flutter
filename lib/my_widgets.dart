import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class MyButton extends StatelessWidget {
  MyButton({@required this.icon, this.onpressed});

  final IconData icon;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      onPressed: onpressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

class CardContent extends StatelessWidget {
  CardContent({@required this.gender, this.label});

  final IconData gender;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          size: 75.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: klabelTextStyle,
        )
      ],
    );
  }
}

class BottmButton extends StatelessWidget {
  BottmButton({@required this.onTap, @required this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: kbottomContainerColor,
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
