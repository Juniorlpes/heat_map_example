  import 'package:flutter_modular/flutter_modular.dart';
import 'package:heat_map/app/modules/dismissible_list/list_page.dart';
  
  class DismissibleListModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => ListPage()),
  ];

  static Inject get to => Inject<DismissibleListModule>.of();

}
  