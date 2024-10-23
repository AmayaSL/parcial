import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title, required this.link, required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(title: 'Home', link: '/', icon: Icons.home),
  MenuItems(title: 'Characters', link: '/character', icon: Icons.person),
  MenuItems(title: 'Planets', link: '/planets', icon: Icons.earbuds_battery),
  MenuItems(title: 'Config', link: '/config', icon: Icons.settings)
];
