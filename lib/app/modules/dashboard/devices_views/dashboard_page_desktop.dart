import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifood_responsive_clone/app/modules/dashboard/dashboard_store.dart';
import 'package:flutter/material.dart';
import 'package:rango/rango.dart';

import '../../../app_store.dart';

class DashboardPageDesktop extends StatefulWidget {
  final String title;
  const DashboardPageDesktop({Key? key, this.title = 'DashboardPageDesktop'})
      : super(key: key);
  @override
  DashboardPageDesktopState createState() => DashboardPageDesktopState();
}

class DashboardPageDesktopState extends State<DashboardPageDesktop> {
  final DashboardStore store = Modular.get();
  final AppStore appStore = Modular.get<AppStore>();
  final selectedPage = 1;
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          body: const RouterOutlet(),
          appBar: AppBar(),
          drawer: CustomDrawerWidget(
            onIndexSelected: (selectedPage) {},
            items: [
              RangoBottomBarItem(
                icon: Icons.home_outlined,
                activeIcon: Icons.home_filled,
                label: 'Início',
              ),
              RangoBottomBarItem(
                icon: Icons.search_outlined,
                activeIcon: Icons.search_rounded,
                label: 'Busca',
              ),
              RangoBottomBarItem(
                icon: Icons.file_copy_outlined,
                activeIcon: Icons.file_copy_rounded,
                label: 'Pedidos',
                countBadge: 2,
              ),
              RangoBottomBarItem(
                icon: Icons.person_outline,
                activeIcon: Icons.person,
                label: 'Perfil',
              ),
            ],
          ),
        );
      },
    );
  }
}
