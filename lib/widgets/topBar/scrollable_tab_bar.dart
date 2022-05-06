import 'package:flutter/material.dart';

class ScrollableTabBar extends TabBar {
  ScrollableTabBar({
    Key? key,
    required BuildContext context,
    required List<Widget> tabs,
    required TabController controller,
  }) : super(
          key: key,
          tabs: tabs,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          isScrollable: true,
          indicator: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(40),
              right: Radius.circular(40),
            ),
          ),
          unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
          controller: controller,
        );
}
