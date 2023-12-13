import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones',
      link: '/buttons',
      icon: Icons.smart_button_outlined),

  MenuItem(
      title: 'Contadores',
      subTitle: 'Contadores con Provider',
      link: '/counter',
      icon: Icons.add_circle_outline),
];
