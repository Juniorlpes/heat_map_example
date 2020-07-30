import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heat_map/app/modules/custom_drawer/custom_drawer_module.dart';
import 'package:heat_map/app/modules/home/widgets/animated_top_container.dart';
import 'package:heat_map/app/modules/home/widgets/custom_bottom_sheet.dart';
import 'package:heat_map/app/modules/home/widgets/grid_view_home.dart';
import 'package:heat_map/app/modules/home/widgets/person_pop.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
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
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.person,
                size: 30,
              ), 
              onPressed: () async {
                var name = await requestPersonPop(context);
                if(name != null) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 2),
                      content: Text('Hello $name!'),
                    )
                  );
                }
              }
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              size: 30,
            ), 
            onPressed: (){
              showModalBottomSheet(
                context: context, 
                builder: (context) => CustomBottomSheet()
              );
            }
          ),
        ],
      ),
      drawer: DrawerModule(),
      body: Column(
        children: <Widget>[
          AnimatedTopContainer(),
          Expanded(
            child: GridViewHome(),
          )
        ],
      ),
    );
  }
}