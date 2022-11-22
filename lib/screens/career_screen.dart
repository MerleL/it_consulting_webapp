import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/screens/about_screen.dart';

import '../modules/appbar_module.dart';
import '../modules/drawer_module.dart';
import '../modules/footer_module.dart';

class Career_Screen extends StatefulWidget {
  const Career_Screen({Key? key}) : super(key: key);

  @override
  State<Career_Screen> createState() => _Career_ScreenState();
}

class _Career_ScreenState extends State<Career_Screen> {
  @override
  Widget build(BuildContext context) {
    /* usable screen height = entire screen height - status bar height - appbar height
    * Tagmalogic. "Widgets sizes relative to screen size in Flutter using MediaQuery." 04.01.2020. [Online] Available: https://medium.com/tagmalogic/widgets-sizes-relative-to-screen-size-in-flutter-using-mediaquery-3f283afc64d6. (Abrufdatum 23.10.2022)
    */
    final double usableHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        AppBar().preferredSize.height;

    final double paddingLR = MediaQuery.of(context).size.width * 0.07;
    final double paddingTB = MediaQuery.of(context).size.width * 0.04;

    return SafeArea(
      child: Scaffold(
        appBar: const AppBar_Module(),
        drawer: const Drawer_Module(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildHero(usableHeight, paddingLR, paddingTB, context),
              buildIntroduction(usableHeight, paddingLR, paddingTB, context),
              buildBenefits(usableHeight, paddingLR, paddingTB, context),
              buildJobs(usableHeight, paddingLR, paddingTB, context),
              buildContact(usableHeight, paddingLR, paddingTB, context),
              const Footer_Module(),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildContact(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: paddingTB),
            child: Text(
              'Nichts dabei?',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }

  Padding buildJobs(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, paddingTB, 0.0, paddingTB),
      child: Column(
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
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  paddingLR, paddingTB, paddingLR, paddingTB),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Stellen-ausschreibungen',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
            child: Container(
              height: usableHeight * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/background_header.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
            child: Container(
              height: usableHeight * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/background_header.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
            child: Container(
              height: usableHeight * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/background_header.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Weitere Stellen laden'),
          ),
        ],
      ),
    );
  }

  Padding buildBenefits(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Placeholder(
        fallbackHeight: usableHeight * 0.7,
      ),
    );
  }

  Padding buildIntroduction(
      double usableHeight, double paddingLR, double paddingTB, context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, 0.0, paddingLR, paddingTB),
      child: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: 240,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const About_Screen(),
                    ),
                  );
                },
                child: Row(
                  children: const [
                    Text('Erfahren Sie mehr über uns'),
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildHero(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Container(
      height: usableHeight * 0.5,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/background_hero.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Karriere',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
