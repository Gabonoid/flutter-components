import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initalRoute = 'home';
  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'Listview Tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.line_style_rounded),
    MenuOption(
        route: 'listview2',
        name: 'listview Tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alerta',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.person_2_rounded),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle),
    MenuOption(
        route: 'animated',
        name: 'Animaterd',
        screen: const AnimatedScreen(),
        icon: Icons.yard),
    MenuOption(
        route: 'inputs',
        name: 'Inputs',
        screen: const InputsScreen(),
        icon: Icons.check_circle_outline_sharp),
    MenuOption(
        route: 'slider',
        name: 'Sliders ',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
    MenuOption(
        route: 'listviewbuilder',
        name: 'InfinteScroll & Pull to refresh ',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // ANTIGUA FORMA DE PONER NUESTRAS RUTAS
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
