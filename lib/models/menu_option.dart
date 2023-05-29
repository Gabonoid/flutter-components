import 'package:flutter/material.dart';

class MenuOption {
  final String route; // Ruta de la pantalla
  final String name; // nombre de nuestra ruta (No es la ruta)
  final Widget screen;
  final IconData icon; // Icono de la pantalla

  MenuOption(
      {required this.route,
      required this.name,
      required this.screen,
      required this.icon,});
}
