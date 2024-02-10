import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class SideMenuDrawer extends StatefulWidget {
  const SideMenuDrawer({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<SideMenuDrawer> createState() => _SideMenuDrawerState();
}

class _SideMenuDrawerState extends State<SideMenuDrawer> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });
          context.push(appMenuItems[value].route);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
            child: Text("Main"),
          ),
          ...appMenuItems.sublist(0, 3).map((e) => NavigationDrawerDestination(
              icon: Icon(e.icon), label: Text(e.title))),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
            child: Text("Other options"),
          ),
          ...appMenuItems.sublist(3, 8).map((e) => NavigationDrawerDestination(
              icon: Icon(e.icon), label: Text(e.title))),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
            child: Text("Configuration"),
          ),
          ...appMenuItems.sublist(8).map((e) => NavigationDrawerDestination(
              icon: Icon(e.icon), label: Text(e.title))),
        ]);
  }
}
