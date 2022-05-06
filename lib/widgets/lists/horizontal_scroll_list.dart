import 'package:flutter/material.dart';
import 'horizontal_item.dart';

class HorizontalScrollList extends StatelessWidget {
  const HorizontalScrollList(
      {Key? key,
      required this.itemCount,
      required this.height,
      required this.itemBuilder})
      : super(key: key);
  final double height;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: height,
      child: ListView.separated(
        itemBuilder: itemBuilder,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
