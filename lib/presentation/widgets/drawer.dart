import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parcial/presentation/screens/config/menu/menu_item.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _DrawerState();
}

class _DrawerState extends State<Menu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
        final menuItem = appMenuItems[value];
        context.push(menuItem.link);
      },
      children: [
        ...appMenuItems.map((res) => NavigationDrawerDestination(
              icon: Icon(res.icon),
              label: Text(res.title),
            ))
      ],
    );
  }
}
