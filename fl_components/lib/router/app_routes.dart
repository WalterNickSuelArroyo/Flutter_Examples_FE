import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption> [
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.access_alarm_rounded),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const ListView1Screen(), icon: Icons.ac_unit),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const ListView2Screen(), icon: Icons.access_alarm_rounded),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.account_balance),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.account_box_sharp),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  
  
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic>? onGenerateRoute (settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      } 
}
