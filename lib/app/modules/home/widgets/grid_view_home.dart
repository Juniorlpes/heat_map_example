import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heat_map/app/modules/home/widgets/custom_card.dart';
import 'package:url_launcher/url_launcher.dart';

class GridViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.vertical,
      primary: false,
      crossAxisSpacing: sizeScreen.width*0.015,
      mainAxisSpacing: sizeScreen.width*0.015,
      padding: EdgeInsets.only(
        top: sizeScreen.height*0.06,
        right: sizeScreen.width*0.015,
        left: sizeScreen.width*0.015
      ),
      children: <Widget>[
        CustomCard(
          icon: Icon(Icons.mail_outline),
          text: 'Go to Gmail',
          onTap: (){
            launch('https://mail.google.com/mail');
          },
        ),
        CustomCard(
          icon: FaIcon(FontAwesomeIcons.youtube,color: Colors.red,),
          text: 'Go to YouTube',
          onTap: (){
            launch('https://www.youtube.com/');
          },
        ),
        CustomCard(
          icon: Icon(Icons.location_on,),
          text: 'Go to Google Maps',
          onTap: (){
            launch('https://www.google.com.br/maps');
          },
        ),
        CustomCard(
          icon: FaIcon(FontAwesomeIcons.google,),
          text: 'Go to Google',
          onTap: (){
            launch('https://www.google.com/');
          },
        ),
        CustomCard(
          icon: Container(
            height: 40,
            width: 40,
            child: FlutterLogo(),
          ),
          text: 'Go to Flutter.dev',
          onTap: (){
            launch('https://flutter.dev/');
          },
        ),
        CustomCard(
          icon: Container(
            height: 45,
            width: 45,
            child: Image.asset('assets/iasd.png',fit: BoxFit.contain,),
          ),
          text: 'Go to Adventist Church',
          onTap: (){
            launch('https://www.adventist.org/');
          },
        ),
      ],
    );
  }
}