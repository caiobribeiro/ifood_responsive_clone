import 'package:flutter/material.dart';

class CouponsAndNewsWidget extends StatefulWidget {
  final List<String> imageList;
  const CouponsAndNewsWidget({super.key, required this.imageList});

  @override
  State<CouponsAndNewsWidget> createState() => _CouponsAndNewsWidgetState();
}

class _CouponsAndNewsWidgetState extends State<CouponsAndNewsWidget> {
  late final pageController = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            padEnds: false,
            controller: pageController,
            itemCount: widget.imageList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 369 / 162,
                    child: Image.network(
                      widget.imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        AnimatedBuilder(
          animation: pageController,
          builder: ((context, child) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.imageList.length,
                (index) {
                  final isSelected = index == pageController.page?.ceil();
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundColor: isSelected ? Colors.red : Colors.grey,
                      radius: isSelected ? 4 : 3,
                    ),
                  );
                },
              ))),
        ),
      ],
    );
  }
}
