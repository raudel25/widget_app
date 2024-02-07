import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botones')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(spacing: 10, alignment: WrapAlignment.center, children: [
          ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
          const ElevatedButton(
              onPressed: null, child: Text('Elevated disable')),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated icon')),
          FilledButton(onPressed: () {}, child: const Text('Filled')),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.abc_rounded),
            label: const Text('Filled icon'),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.access_time_filled_rounded),
            label: const Text('Outlined icon'),
          ),
          TextButton(onPressed: () {}, child: const Text('Text')),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.telegram_rounded),
            label: const Text('Text icon'),
          ),
          const _CustomButton(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.radar_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.radar_rounded, color: Colors.white),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(colors.primary)),
          )
        ]),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.blue,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Hello World"),
          ),
        ),
      ),
    );
  }
}
