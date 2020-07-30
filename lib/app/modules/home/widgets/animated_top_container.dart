import 'package:flutter/material.dart';

class AnimatedTopContainer extends StatefulWidget {
  @override
  _AnimatedTopContainerState createState() => _AnimatedTopContainerState();
}

class _AnimatedTopContainerState extends State<AnimatedTopContainer> {

  double minWidth = 100;
  double maxWidth = 200;
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        setState(() {
          expanded = !expanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.redAccent,
        child: Center(
          child: Text(
            'Click here',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
            )
          ),
        ),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.topCenter,
        height: sizeScreen.height*0.08,
        width: (expanded) ? maxWidth : minWidth,
        margin: EdgeInsets.symmetric(
          vertical: sizeScreen.height*0.01, 
          horizontal: sizeScreen.width*0.02
        ),
      ),
    );
  }
}