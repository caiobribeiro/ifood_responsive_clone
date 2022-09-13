import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/gestures.dart';
import 'app_store.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final AppStore store = Modular.get<AppStore>();

  @override
  void initState() {
    store.loadTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home');
    return Observer(builder: (_) {
      return MaterialApp.router(
        title: 'Flutter Slidy',
        theme: store.currentTheme,
        scrollBehavior: AppScrollBehavior(),
        routerDelegate: Modular.routerDelegate,
        routeInformationParser: Modular.routeInformationParser,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
