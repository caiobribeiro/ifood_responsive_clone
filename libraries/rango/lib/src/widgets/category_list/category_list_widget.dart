import 'package:flutter/material.dart';

class CategoryListWidget extends StatefulWidget {
  final List<CategoryListItem> items;
  const CategoryListWidget({super.key, required this.items});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 5,
          runSpacing: 10,
          children: List.from(widget.items.map((item) => _CategoryItemWidget(
                item: item,
              ))),
        ),
      ),
    );
  }
}

class _CategoryItemWidget extends StatefulWidget {
  final CategoryListItem item;
  const _CategoryItemWidget({required this.item});

  @override
  State<_CategoryItemWidget> createState() => _CategoryItemWidgetState();
}

class _CategoryItemWidgetState extends State<_CategoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.5,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () {
            widget.item.onTap(widget.item);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                child: AspectRatio(
                  aspectRatio: 9 / 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        widget.item.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                widget.item.label,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryListItem {
  final String label;
  final String imageUrl;
  final void Function(CategoryListItem item) onTap;

  CategoryListItem({
    required this.label,
    required this.imageUrl,
    required this.onTap,
  });
}
