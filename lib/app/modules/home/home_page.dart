import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rango/rango.dart';
import '../../app_store.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();
  final AppStore appStore = Modular.get<AppStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          body: Center(
            child: Switch(
              value: appStore.isDark,
              onChanged: (value) {
                appStore.changeTheme();
              },
            ),
          ),
        );
      },
    );
  }
}
