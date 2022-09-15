import 'package:flutter/material.dart';

class BestRestaurantsWidget extends StatelessWidget {
  final List<BestRestaurantItem> restaurants;

  const BestRestaurantsWidget({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Bãos restaurantes'),
              TextButton(
                onPressed: () {},
                child: const Text('Ver mais'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: restaurants.length,
            itemBuilder: ((context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                width: MediaQuery.of(context).size.width / 5,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 16,
                      backgroundImage:
                          NetworkImage(restaurants[index].urlImage),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      restaurants[index].name,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class BestRestaurantItem {
  final String urlImage;
  final int id;
  final String name;

  BestRestaurantItem({
    required this.urlImage,
    required this.id,
    required this.name,
  });
}
