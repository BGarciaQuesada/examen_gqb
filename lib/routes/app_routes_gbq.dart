import 'package:fl_examen_gqb/models/models.dart';
import '../screens/home_screen_gqb.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        screen: const HomeScreen()),
    MenuOption(
        route: 'home',
        screen: const HomeScreen()),
  ];
}