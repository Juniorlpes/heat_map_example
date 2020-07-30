import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:heat_map/api_key.dart';
import 'package:smartlook/smartlook.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Smartlook.setup(apiKey);
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
  