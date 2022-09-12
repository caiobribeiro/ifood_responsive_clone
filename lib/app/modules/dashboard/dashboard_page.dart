import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifood_responsive_clone/app/modules/dashboard/dashboard_store.dart';
import 'package:flutter/material.dart';
import 'package:rango/rango.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key? key, this.title = 'DashboardPage'})
      : super(key: key);
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  final DashboardStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: RangoBottomBar(
        onIndexSelected: (selectedPage) => {
          store.pageController = selectedPage,
          if (store.pageController == 0)
            {
              Modular.to.navigate('/home/'),
            }
          else if (store.pageController == 1)
            {
              Modular.to.navigate('/search/'),
            }
          else if (store.pageController == 2)
            {
              Modular.to.navigate('/order/'),
            }
          else if (store.pageController == 3)
            {
              Modular.to.navigate('/profile/'),
            }
        },
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
  }
}
