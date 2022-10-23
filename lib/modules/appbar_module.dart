import 'package:flutter/material.dart';

class AppBar_Module extends StatelessWidget implements PreferredSizeWidget {
  const AppBar_Module({Key? key}) : super(key: key);

  @override
  // AppBar default: Size(100.0, 56.0)
  // M. Lalwani. "How to Get AppBar Height In Flutter ?." 13.12.2021. [Online] Available: https://flutteragency.com/get-appbar-height-in-flutter/. (Abrufdatum 23.10.2022)
  final Size preferredSize = const Size(100.0, 56.0);

  @override
  Widget build(BuildContext context) => AppBar();
}
