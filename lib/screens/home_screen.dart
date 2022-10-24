import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/modules/appbar_module.dart';
import 'package:it_consulting_webapp/modules/footer_module.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

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
              buildNews(usableHeight),
              buildServices(usableHeight, context),
              buildCareer(usableHeight, context),
              buildStories(usableHeight, context),
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
        Placeholder(
          fallbackHeight: usableHeight * 0.2,
        ),
      ],
    );
  }

  Column buildStories(double usableHeight, context) {
    return Column(
      children: [
        Text(
          'Erfolgsgeschichten',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Column buildCareer(double usableHeight, context) {
    return Column(
      children: [
        Text(
          'Werde Teil unseres Teams',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Column buildServices(double usableHeight, context) {
    return Column(
      children: [
        Text(
          'Unsere Leistungen',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Placeholder buildNews(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.1,
    );
  }

  Text buildIntroduction(double usableHeight, context) {
    return Text(
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  Placeholder buildHero(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.8,
    );
  }
}