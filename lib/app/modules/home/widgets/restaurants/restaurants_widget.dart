import 'package:flutter/material.dart';

class RestaurantsWidget extends StatefulWidget {
  const RestaurantsWidget({super.key});

  @override
  State<RestaurantsWidget> createState() => _RestaurantsWidgetState();
}

class _RestaurantsWidgetState extends State<RestaurantsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(child: Text("Restaurantes")),
    );
  }
}
