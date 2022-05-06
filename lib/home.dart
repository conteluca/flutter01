import 'package:flutter/material.dart';
import 'package:flutter01/widgets/lists/custom_title.dart';
import 'package:flutter01/widgets/lists/horizontal_item.dart';
import 'package:flutter01/widgets/lists/horizontal_scroll_list.dart';
import 'package:flutter01/widgets/topBar/custom_tab.dart';
import 'widgets/topBar/scrollable_tab_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  final List<CustomTab> tabs = const [
    CustomTab(text: "Make Up", icon: Icons.face),
    CustomTab(text: "Tanning", icon: Icons.lightbulb),
    CustomTab(text: "SPA", icon: Icons.bathtub),
    CustomTab(text: "Massage", icon: Icons.baby_changing_station_rounded),
    CustomTab(text: "Manicure", icon: Icons.back_hand_rounded),
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<IconButton> _buildAppBarActions = [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search),
    ),
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: widget.tabs.length,
        child: Builder(
          builder: (context) {
            TabController tabController = DefaultTabController.of(context)!;
            return Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    floating: true,
                    pinned: true,
                    snap: true,
                    title: const Text('WFRIEND'),
                    actions: _buildAppBarActions,
                    bottom: ScrollableTabBar(
                      context: context,
                      tabs: widget.tabs,
                      controller: tabController,
                    ),
                  ),
                ],
                body: TabBarView(
                  children: [
                    ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        const CustomTitle(title: "Recent Activities"),
                        HorizontalScrollList(
                          height: 200,
                          itemCount: 100,
                          itemBuilder: (context, index) => CustomListItem(
                            radius: 20,
                            text: "Recent Activities $index",
                            height: 200,
                            width: 120,
                          ),
                        ),
                        const CustomTitle(title: "Recommended for you"),
                        HorizontalScrollList(
                          height: 120,
                          itemCount: 100,
                          itemBuilder: (context, index) => CustomListItem(
                            radius: 18,
                            text: "Recommended for you $index",
                            height: 120,
                            width: 150,
                          ),
                        ),
                        const CustomTitle(title: "Recommended for you"),
                        HorizontalScrollList(
                          height: 150,
                          itemCount: 100,
                          itemBuilder: (context, index) => CustomListItem(
                            radius: 24,
                            text: "Recommended for you $index",
                            height: 150,
                            width: 200,
                          ),
                        ),
                      ],
                    ),
                    ListView.separated(
                      itemBuilder: (context, index) => Container(
                        color: Colors.amber,
                        height: 50,
                        child: const Text("ciao"),
                      ),
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: 1100,
                    ),
                    const Center(
                      child: Text("Ciao"),
                    ),
                    const Center(
                      child: Text("Ciao"),
                    ),
                    const Center(
                      child: Text("Ciao"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
}
