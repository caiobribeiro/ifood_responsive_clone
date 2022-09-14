import 'package:flutter/material.dart';
import 'package:rango/rango.dart';

class AllStoresWidget extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidget({super.key, required this.tabController});

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              CategoryListWidget(
                items: [
                  CategoryListItem(
                    label: 'Restaurantes',
                    imageUrl:
                        'https://i.pinimg.com/originals/6a/27/ac/6a27ac5560df47ec8bb998051b74b1f0.png',
                    onTap: (item) {
                      widget.tabController.animateTo(1);
                    },
                  ),
                  CategoryListItem(
                    label: 'Mercados',
                    imageUrl:
                        'https://cdn-icons-png.flaticon.com/512/3082/3082011.png',
                    onTap: (item) {
                      widget.tabController.animateTo(2);
                    },
                  ),
                  CategoryListItem(
                    label: 'Bebidas',
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWHNMcRK_crxVO7kxj9tiKcICDOCuHyIoe4SEHjDzYaDNkGpsOosFbjhJbBfTVhrpt1K0&usqp=CAU',
                    onTap: (item) {
                      widget.tabController.animateTo(3);
                    },
                  ),
                  CategoryListItem(
                    label: 'Drogaria',
                    imageUrl:
                        'https://cdn-icons-png.flaticon.com/512/4320/4320337.png',
                    onTap: (item) {
                      widget.tabController.animateTo(4);
                    },
                  ),
                  CategoryListItem(
                    label: 'Exemplo',
                    imageUrl:
                        'https://cdn-icons-png.flaticon.com/512/4320/4320337.png',
                    onTap: (item) {
                      widget.tabController.animateTo(4);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
