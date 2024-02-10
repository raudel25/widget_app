import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void updateColor(MyColor color) {
    state = state.copyWith(color: color);
  }

  void updateIsDarkMode(bool isDarkMode) {
    state = state.copyWith(isDarkMode: isDarkMode);
  }
}
