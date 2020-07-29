import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heat_map/app/modules/custom_drawer/custom_drawer_module.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  
  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Heat Map',
          style: GoogleFonts.dancingScript(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              size: 30,
            ), 
            onPressed: (){

            }
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              size: 30,
            ), 
            onPressed: (){

            }
          ),
        ],
      ),
      drawer: DrawerModule(),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            alignment: Alignment.topCenter,
            height: sizeScreen.height*0.08,
            width: sizeScreen.width*0.3,
            margin: EdgeInsets.symmetric(
              vertical: sizeScreen.height*0.01, 
              horizontal: sizeScreen.width*0.02
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              scrollDirection: Axis.vertical,
              primary: false,
              crossAxisSpacing: sizeScreen.width*0.015,
              mainAxisSpacing: sizeScreen.width*0.015,
              padding: EdgeInsets.only(
                top: sizeScreen.height*0.1,
                right: sizeScreen.width*0.015,
                left: sizeScreen.width*0.015
              ),
              children: <Widget>[
                Card(
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add),
                        Text('add', textAlign: TextAlign.center,)
                      ],
                    ),
                  )
                ),
                Card(
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add),
                        Text('add', textAlign: TextAlign.center,)
                      ],
                    ),
                  )
                ),
                Card(
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add),
                        Text('add', textAlign: TextAlign.center,)
                      ],
                    ),
                  )
                ),
                Card(
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add),
                        Text('add', textAlign: TextAlign.center,)
                      ],
                    ),
                  )
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
  