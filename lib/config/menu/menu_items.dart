import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String route;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.route,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      route: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      route: '/cards',
      icon: Icons.credit_card)
];
