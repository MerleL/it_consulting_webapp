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
              buildIntroduction(usableHeight, context),
              buildInsights(usableHeight, context),
              buildTeam(usableHeight, context),
              buildPartners(usableHeight, context),
              const Footer_Module(),
            ],
          ),
        ),
      ),
    );
  }

  Column buildPartners(double usableHeight, context) {
    return Column(
      children: [
        Text(
          'Unsere Partner',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Column buildTeam(double usableHeight, context) {
    return Column(
      children: [
        Text(
          'Das Team',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Column buildInsights(double usableHeight, context) {
    return Column(
      children: [
        Text(
          'News & Insights',
          style: Theme.of(context).textTheme.headline1,
        ),
        Placeholder(
          fallbackHeight: usableHeight * 0.3,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Placeholder(
          fallbackHeight: usableHeight * 0.3,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Placeholder(
          fallbackHeight: usableHeight * 0.3,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Text buildIntroduction(double usableHeight, context) {
    return Text(
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  Placeholder buildHero(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.5,
    );
  }
}
