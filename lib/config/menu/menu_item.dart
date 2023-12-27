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
      title: 'Tarjetas',
      subTitle: 'Contadores de tarjetas',
      link: '/cards',
      icon: Icons.add_circle_outline),

      MenuItem(
        title: 'ProgressIndicators',
        subTitle: 'Generales y controladores',
        link: '/progress',
        icon: Icons.refresh_rounded
      ),

      MenuItem(
        title: 'Snackbar y dialogos',
        subTitle: 'Indicadores en pantalla',
        link: '/snackbar',
        icon: Icons.info_outline
      ),
];
