import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          ListTile(
            title: Text('Item 1'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Item 3'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}