import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smartlook/smartlook.dart';

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
          _buildBackGround(),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.list),
                  title: Text('Dismissible List'),
                  onTap: (){
                    Modular.to.pop();
                    Smartlook.trackNavigationEvent("list_page", SmartlookNavigationEventType.enter);
                    Modular.to.pushNamed('/home/list');
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}
  