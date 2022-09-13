import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifood_responsive_clone/app/app_store.dart';
import 'package:ifood_responsive_clone/app/modules/profile/profile_store.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key? key, this.title = 'Perfil'}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final ProfileStore store = Modular.get();
  final AppStore appStore = Modular.get<AppStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
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
