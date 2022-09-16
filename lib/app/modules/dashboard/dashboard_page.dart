import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifood_responsive_clone/app/modules/dashboard/dashboard_store.dart';
import 'package:flutter/material.dart';
import '../../app_store.dart';
import '../../responsive/responsive_layout.dart';
import 'devices_views/dashboard_page_desktop.dart';
import 'devices_views/dashboard_page_mobile.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key? key, this.title = 'DashboardPage'})
      : super(key: key);
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  final DashboardStore store = Modular.get();
  final AppStore appStore = Modular.get<AppStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return const ResponsiveLayout(
        mobileBody: DashboardPageMobile(),
        tabletBody: DashboardPageMobile(),
        desktopBody: DashboardPageDesktop(),
      );
    });
  }
}
