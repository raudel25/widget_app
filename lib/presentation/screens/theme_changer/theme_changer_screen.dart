import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final colors = [
      MyColor.custom,
      MyColor.blue,
      MyColor.green,
      MyColor.yellow,
      MyColor.teal,
      MyColor.orange,
      MyColor.pink
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme changer'),
          actions: [
            IconButton(
                onPressed: () {
                  ref
                      .read(themeProvider.notifier)
                      .updateIsDarkMode(!theme.isDarkMode);
                },
                icon: Icon(theme.isDarkMode
                    ? Icons.dark_mode_outlined
                    : Icons.light_mode_outlined))
          ],
        ),
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              final color = enumToColor(colors[index]);
              return RadioListTile(
                  title: Text(
                    'This color',
                    style: TextStyle(color: color),
                  ),
                  subtitle: Text('${color.value}'),
                  value: colors[index],
                  groupValue: theme.color,
                  activeColor: color,
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(themeProvider.notifier).updateColor(value);
                    }
                  });
            }));
  }
}
