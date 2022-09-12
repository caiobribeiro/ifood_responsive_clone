import 'package:ifood_responsive_clone/app/modules/dashboard/dashboard_page.dart';
import 'package:ifood_responsive_clone/app/modules/dashboard/dashboard_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home/home_module.dart';
import '../order/order_module.dart';
import '../profile/profile_module.dart';
import '../search/search_module.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DashboardStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const DashboardPage(),
        children: [
          ModuleRoute('/home', module: HomeModule()),
          ModuleRoute('/search', module: SearchModule()),
          ModuleRoute('/order', module: OrderModule()),
          ModuleRoute('/profile', module: ProfileModule()),
        ]),
  ];
}
