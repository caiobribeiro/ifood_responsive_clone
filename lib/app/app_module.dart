import 'package:flutter_modular/flutter_modular.dart';
import 'app_store.dart';
import 'modules/dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: DashboardModule()),
  ];
}
