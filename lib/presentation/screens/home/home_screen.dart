import 'package:flutter/material.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter + Material 3')),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          return _CustomListTile(item: appMenuItems[index]);
        });
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.item,
  });

  final MenuItem item;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(
        item.icon,
        color: color.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: color.primary,
      ),
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      onTap: () {},
    );
  }
}