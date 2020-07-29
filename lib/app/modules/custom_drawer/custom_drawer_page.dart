import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  Widget _buildBackGround(){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Colors.red[600],
            Colors.red[200],
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildBackGround()
        ],
      ),
    );
  }

}
  