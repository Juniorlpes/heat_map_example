import 'package:flutter_modular/flutter_modular.dart';
import 'package:heat_map/app/modules/dismissible_list/dismissible_list_module.dart';
import 'package:heat_map/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => HomePage()),
    Router('/home/list', module: DismissibleListModule()),
  ];

  static Inject get to => Inject<HomeModule>.of();

}
  