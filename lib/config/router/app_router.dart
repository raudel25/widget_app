import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/animated/animated_screen.dart';
import 'package:widget_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_app/presentation/screens/cards/cards_screen.dart';
import 'package:widget_app/presentation/screens/home/home_screen.dart';
import 'package:widget_app/presentation/screens/progress_indicators/progress_indicators_screen.dart';
import 'package:widget_app/presentation/screens/snackbars/snackbars_screen.dart';
import 'package:widget_app/presentation/screens/tutorial/tutorial_screen.dart';
import 'package:widget_app/presentation/screens/ui_controls/ui_controls_screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progressIndicators',
      builder: (context, state) => const ProgressIndicatorsScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      builder: (context, state) => const SnackbarsScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/uiControls',
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      builder: (context, state) => const TutorialsScreen(),
    )
  ],
);
