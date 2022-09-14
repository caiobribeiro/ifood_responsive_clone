import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifood_responsive_clone/app/modules/home/widgets/all_stores/all_store_widget.dart';
import 'package:ifood_responsive_clone/app/modules/home/widgets/drug_store/drug_store_widget.dart';
import 'package:ifood_responsive_clone/app/modules/home/widgets/grocery/grocery_widget.dart';
import 'package:ifood_responsive_clone/app/modules/home/widgets/liquor_store/liquor_store_widget.dart';
import 'package:ifood_responsive_clone/app/modules/home/widgets/restaurants/restaurants_widget.dart';
import '../../app_store.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Início'}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final HomeStore store = Modular.get();
  final AppStore appStore = Modular.get<AppStore>();

  late final tabController = TabController(length: 5, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              bottom: TabBar(
                controller: tabController,
                isScrollable: true,
                labelColor:
                    appStore.isDark == false ? Colors.black : Colors.white,
                indicatorColor:
                    appStore.isDark == false ? Colors.black : Colors.white,
                unselectedLabelColor:
                    appStore.isDark == false ? Colors.black38 : Colors.white38,
                tabs: const [
                  Tab(text: "Início"),
                  Tab(text: "Restaurantes"),
                  Tab(text: "Mercados"),
                  Tab(text: "Bebidas"),
                  Tab(text: "Drogarias"),
                ],
              ),
            ),
            body: TabBarView(
              controller: tabController,
              children: [
                AllStoresWidget(tabController: tabController),
                const RestaurantsWidget(),
                const GroceryWidget(),
                const LiquorStoreWidget(),
                const DrugStoreWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
