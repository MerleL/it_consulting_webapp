import 'package:flutter/material.dart';

import '../modules/appbar_module.dart';
import '../modules/footer_module.dart';

class About_Screen extends StatelessWidget {
  const About_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* usable screen height = entire screen height - status bar height - appbar height
    * Tagmalogic. "Widgets sizes relative to screen size in Flutter using MediaQuery." 04.01.2020. [Online] Available: https://medium.com/tagmalogic/widgets-sizes-relative-to-screen-size-in-flutter-using-mediaquery-3f283afc64d6. (Abrufdatum 23.10.2022)
    */
    final double usableHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        AppBar().preferredSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: const AppBar_Module(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildHero(usableHeight),
              buildIntroduction(usableHeight),
              buildInsights(usableHeight),
              buildTeam(usableHeight),
              buildPartners(usableHeight),
              const Footer_Module(),
            ],
          ),
        ),
      ),
    );
  }

  Placeholder buildPartners(double usableHeight) {
    return Placeholder(
              fallbackHeight: usableHeight * 0.4,
            );
  }

  Placeholder buildTeam(double usableHeight) {
    return buildPartners(usableHeight);
  }

  Column buildInsights(double usableHeight) {
    return Column(
      children: [
        Placeholder(
          fallbackHeight: usableHeight * 0.1,
        ),
        buildPartners(usableHeight),
        buildPartners(usableHeight),
        buildPartners(usableHeight),
      ],
    );
  }

  Placeholder buildIntroduction(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.8,
    );
  }

  Placeholder buildHero(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.5,
    );
  }
}
