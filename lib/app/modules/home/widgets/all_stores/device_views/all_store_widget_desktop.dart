import 'package:flutter/material.dart';
import 'package:rango/rango.dart';

class AllStoresWidgetDesktop extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidgetDesktop({super.key, required this.tabController});

  @override
  State<AllStoresWidgetDesktop> createState() => _AllStoresWidgetDesktopState();
}

class _AllStoresWidgetDesktopState extends State<AllStoresWidgetDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            // const CustomDrawer(),

            // first half of page
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // first 4 boxes in grid
                  AspectRatio(
                    aspectRatio: 3,
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

                  // list of previous days
                  Expanded(
                    child: ListView(
                      controller: ScrollController(),
                      children: [
                        StoreList(
                          store: List.generate(
                            10,
                            (index) => StoreItem(
                              kindOf: 'Bauru',
                              price: '4,99',
                              rate: '5',
                              storeName: 'Gujo Lanches ($index)',
                              time: '20 - 30 min',
                              distance: '5,22',
                              imageUrl:
                                  'https://10619-2.s.cdn12.com/rests/original/314_508710370.jpg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // second half of page
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CouponsAndNewsWidget(
                      imageList: [
                        'https://pbs.twimg.com/ext_tw_video_thumb/1429123597889687556/pu/img/lnRPtKnz90glqAbv?format=jpg&name=large',
                        'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
                        'https://pbs.twimg.com/ext_tw_video_thumb/1429123597889687556/pu/img/lnRPtKnz90glqAbv?format=jpg&name=large',
                        'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
                      ],
                    ),
                  ),
                  // list of stuff
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const AdvertisingWidget(
                            imageLink:
                                'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          BestRestaurantsWidget(
                            restaurants: List.generate(
                              10,
                              (index) => BestRestaurantItem(
                                  id: index,
                                  name: '$index + Rango bão',
                                  urlImage:
                                      'https://scontent.fcgh3-1.fna.fbcdn.net/v/t39.30808-6/299990556_186213100436900_3661256872735538416_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=DpyJ9EpH7acAX--1Iru&_nc_ht=scontent.fcgh3-1.fna&oh=00_AT_ADDRGdTpD6MAZw3BLPRP78dDDSiv5fMxYbo07nNyQ4A&oe=632796F9'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
