import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rango/rango.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      bottomNavigationBar: RangoBottomBar(
        onIndexSelected: (index) => print(index),
        items: [
          RangoBottomBarItem(icon: Icons.home, label: 'Início'),
          RangoBottomBarItem(icon: Icons.search, label: 'Busca'),
          RangoBottomBarItem(icon: Icons.file_copy_outlined, label: 'Pedidos'),
          RangoBottomBarItem(icon: Icons.person, label: 'Perfil'),
        ],
      ),
      body: Observer(
        builder: (context) => Text('${store.counter}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
