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
      title: 'Buttons',
      subTitle: 'Various buttons in flutter',
      route: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Cards',
      subTitle: 'A stylized container',
      route: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress indicators',
      subTitle: 'General and controlled',
      route: '/progressIndicators',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars and dialogs',
      subTitle: 'Screens indicators',
      route: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Animated Widget',
      route: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI controls + Tiles',
      subTitle: 'A series of controllers in flutter',
      route: '/uiControls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introduction to the application',
      subTitle: 'Little tutorial',
      route: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Infinite scroll',
      subTitle: 'Infinite scroll and pull refresh',
      route: '/infiniteScroll',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Theme changer',
      subTitle: 'Change app theme',
      route: '/themeChanger',
      icon: Icons.color_lens_rounded)
];
