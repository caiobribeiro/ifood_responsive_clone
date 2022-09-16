import 'package:flutter/material.dart';

class FastMenuWidget extends StatelessWidget {
  final List<FastMenuItem> fastMenuList;
  const FastMenuWidget({
    super.key,
    required this.fastMenuList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return _FastMenuItemWidget(
            item: fastMenuList[index],
          );
        }),
        itemCount: fastMenuList.length,
      ),
    );
  }
}

class _FastMenuItemWidget extends StatelessWidget {
  final FastMenuItem item;
  const _FastMenuItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4.7,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 4.7,
              color: Colors.blue.withOpacity(.5),
            ),
            Positioned(
              bottom: 5,
              left: 15,
              right: 15,
              top: -15,
              child: Image.network(item.imageUrl),
            ),
            Positioned(
              bottom: 5,
              left: 0,
              right: 0,
              child: SelectableText(
                item.label,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FastMenuItem {
  final String imageUrl;
  final String label;

  FastMenuItem({
    required this.imageUrl,
    required this.label,
  });
}
