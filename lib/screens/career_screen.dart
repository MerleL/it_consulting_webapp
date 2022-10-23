import 'package:flutter/material.dart';

import '../modules/appbar_module.dart';
import '../modules/footer_module.dart';

class Career_Screen extends StatelessWidget {
  const Career_Screen({Key? key}) : super(key: key);

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
              buildJobs(usableHeight),
              buildContact(usableHeight),
              const Footer_Module(),
            ],
          ),
        ),
      ),
    );
  }

  Placeholder buildContact(double usableHeight) {
    return Placeholder(
              fallbackHeight: usableHeight * 0.5,
            );
  }

  Column buildJobs(double usableHeight) {
    return Column(
      children: [
        Placeholder(
          fallbackHeight: usableHeight * 0.2,
        ),
        buildBenefits(usableHeight),
        Placeholder(
          fallbackHeight: usableHeight * 0.3,
        ),
        Placeholder(
          fallbackHeight: usableHeight * 0.3,
        ),
        Placeholder(
          fallbackHeight: usableHeight * 0.3,
        ),
      ],
    );
  }

  Placeholder buildBenefits(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.4,
    );
  }

  Placeholder buildIntroduction(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.7,
    );
  }

  Placeholder buildHero(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.5,
    );
  }
}
