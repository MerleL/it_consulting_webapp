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
              buildHero(usableHeight, context),
              buildIntroduction(usableHeight, context),
              buildBenefits(usableHeight),
              buildJobs(usableHeight, context),
              buildContact(usableHeight, context),
              const Footer_Module(),
            ],
          ),
        ),
      ),
    );
  }

  Column buildContact(double usableHeight, context) {
    return Column(
      children: [
        Text(
          'Nichts dabei?',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Column buildJobs(double usableHeight, context) {
    return Column(
      children: [
        Container(
          height: usableHeight * 0.2,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'lib/assets/images/background_hero_leftbottom.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Stellenausschreibungen',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ),
        Container(
          height: usableHeight * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/background_header.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: usableHeight * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/background_header.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: usableHeight * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/background_header.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Placeholder buildBenefits(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.7,
    );
  }

  Column buildIntroduction(double usableHeight, context) {
    return Column(
      children: [
        Text(
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Placeholder(
          fallbackHeight: usableHeight * 0.1,
        ),
      ],
    );
  }

  Container buildHero(double usableHeight, context) {
    return Container(
      height: usableHeight * 0.5,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/background_hero.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Karriere',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
