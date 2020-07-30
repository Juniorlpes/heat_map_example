import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget icon;
  final String text;
  final Function onTap;

  CustomCard({@required this.icon, @required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            icon,
            Text(text, textAlign: TextAlign.center,)
          ],
        ),
      )
    );
  }
}