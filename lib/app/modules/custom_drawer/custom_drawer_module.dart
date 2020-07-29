import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:heat_map/app/modules/custom_drawer/custom_drawer_page.dart';

class DrawerModule extends WidgetModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => CustomDrawer()),
  ];

  static Inject get to => Inject<DrawerModule>.of();

  @override
  Widget get view => CustomDrawer();

}
  