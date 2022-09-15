import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  final List<StoreItem> store;
  const StoreList({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            "Lojas",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: ((context, index) => const SizedBox(
                  height: 16,
                )),
            shrinkWrap: true,
            itemCount: store.length,
            itemBuilder: ((context, index) {
              return StoreItemWidget(
                store: store[index],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class StoreItem {
  final String storeName;
  final String rate;
  final String price;
  final String time;
  final String kindOf;
  final String imageUrl;
  final String distance;

  StoreItem({
    required this.storeName,
    required this.rate,
    required this.price,
    required this.time,
    required this.kindOf,
    required this.imageUrl,
    required this.distance,
  });
}

class StoreItemWidget extends StatelessWidget {
  final StoreItem store;

  const StoreItemWidget({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(
                  'https://10619-2.s.cdn12.com/rests/original/314_508710370.jpg'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  store.storeName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 207, 195, 81),
                    ),
                    Text(
                      store.rate,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 207, 195, 81),
                      ),
                    ),
                    Text(
                      "* ${store.kindOf} * 1,9 Km",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  "${store.time} * ${store.price}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}
