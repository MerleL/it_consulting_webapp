import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/screens/notImplemented_screen.dart';

import '../modules/appbar_module.dart';
import '../modules/drawer_module.dart';
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
              buildInsights(usableHeight, paddingLR, paddingTB, context),
              buildTeam(usableHeight, paddingLR, paddingTB, context),
              buildPartners(usableHeight, paddingLR, paddingTB, context),
              const Footer_Module(),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPartners(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: paddingTB),
            child: Text(
              'Unsere Partner',
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

  Padding buildTeam(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, paddingTB, 0.0, paddingTB),
      child: Container(
        height: usableHeight * 0.6,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/background_header.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: paddingTB),
                child: Text(
                  'Das Team',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotImplemented_Screen(),
                      ),
                    );
                  },
                  child: const Text('Zu den Mitarbeiterprojekten'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildInsights(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Column(
        children: [
          Text(
            'News & Insights',
            style: Theme.of(context).textTheme.headline2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, paddingTB, 0.0, paddingTB),
            child: Column(
              children: [
                Container(
                  height: usableHeight * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('lib/assets/images/background_header.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide.none,
                      right: BorderSide(width: 1, color: Color(0xff9cd1be)),
                      bottom: BorderSide(width: 1, color: Colors.teal),
                      left: BorderSide(width: 1, color: Colors.teal),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        paddingLR, paddingTB, paddingLR, paddingTB),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, paddingTB, 0.0, paddingTB),
            child: Column(
              children: [
                Container(
                  height: usableHeight * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('lib/assets/images/background_header.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide.none,
                      right: BorderSide(width: 1, color: Color(0xff9cd1be)),
                      bottom: BorderSide(width: 1, color: Colors.teal),
                      left: BorderSide(width: 1, color: Colors.teal),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        paddingLR, paddingTB, paddingLR, paddingTB),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, paddingTB, 0.0, paddingTB),
            child: Column(
              children: [
                Container(
                  height: usableHeight * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('lib/assets/images/background_header.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide.none,
                      right: BorderSide(width: 1, color: Color(0xff9cd1be)),
                      bottom: BorderSide(width: 1, color: Colors.teal),
                      left: BorderSide(width: 1, color: Colors.teal),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        paddingLR, paddingTB, paddingLR, paddingTB),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildIntroduction(double usableHeight, double paddingLR,
      double paddingTB, BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, 0.0, paddingLR, paddingTB),
      child: Text(
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        style: Theme.of(context).textTheme.bodyText1,
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
            'Über Uns',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
