import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_uxcam/flutter_uxcam.dart';
import 'package:heat_map/ux_key.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterUxcam.optIntoSchematicRecordings();
    FlutterUxcam.startWithKey(uxKey);
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Heat Map Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
  