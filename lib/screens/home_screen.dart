import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/modules/appbar_module.dart';
import 'package:it_consulting_webapp/modules/drawer_module.dart';
import 'package:it_consulting_webapp/modules/footer_module.dart';
import 'package:it_consulting_webapp/screens/about_screen.dart';
import 'package:it_consulting_webapp/screens/career_screen.dart';
import 'package:it_consulting_webapp/screens/notImplemented_screen.dart';

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

    final double paddingLR = MediaQuery.of(context).size.width * 0.07;
    final double paddingTB = MediaQuery.of(context).size.width * 0.04;

    // ScrollController scrollController = ScrollController();

    return SafeArea(
      child: Scaffold(
        appBar: const AppBar_Module(),
        drawer: const Drawer_Module(),
        body: SingleChildScrollView(
          // controller: scrollController,
          child: Column(
            children: [
              buildHero(usableHeight, paddingLR, paddingTB, context),
              buildIntroduction(usableHeight, paddingLR, paddingTB, context),
              buildNews(usableHeight, paddingLR, paddingTB, context),
              buildServices(usableHeight, paddingLR, paddingTB, context),
              buildCareer(usableHeight, paddingLR, paddingTB, context),
              buildStories(usableHeight, paddingLR, paddingTB, context),
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
          buildHeader(paddingTB, context, 'Unsere Partner'),
          Row(
            children: [
              Container(
                height: usableHeight * 0.05,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('lib/assets/images/background_header.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingLR * 1.8),
                child: Container(
                  height: usableHeight * 0.05,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('lib/assets/images/background_header.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                height: usableHeight * 0.05,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('lib/assets/images/background_header.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildStories(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Column(
        children: [
          buildHeader(paddingTB, context, 'Erfolgsgeschichten'),
          Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          buildButton(context, 'Erfahren Sie mehr', const NotImplemented_Screen()),
        ],
      ),
    );
  }

  Padding buildCareer(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, paddingTB, 0.0, paddingTB),
      child: Container(
        height: usableHeight * 0.55,
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
                  'Werde Teil unseres Teams',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              buildButton(context, 'Bewirb dich jetzt!', const Career_Screen()),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildServices(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Column(
        children: [
          buildHeader(paddingTB, context, 'Unsere Leistungen'),
          Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          buildButton(context, 'Erfahren Sie mehr über unsere Leistungen',
              const NotImplemented_Screen()),
        ],
      ),
    );
  }

  Padding buildNews(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, paddingTB, 0.0, paddingTB),
      child: Container(
        height: usableHeight * 0.14,
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
              Text(
                'Besuchen Sie unsere Messe am 24.11.22',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildIntroduction(double usableHeight, double paddingLR,
      double paddingTB, BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, 0.0, paddingLR, paddingTB),
      child: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          buildButton(context, 'Erfahren Sie mehr über Uns', const About_Screen())
        ],
      ),
    );
  }

  Container buildHero(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Container(
      height: usableHeight * 0.8,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/background_hero.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB * 3),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Mit IT-CONSULTING zum Ziel',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }

  Padding buildButton(BuildContext context, String str, Widget screen) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => screen,
            ),
          );
        },
        child: Text(str),
      ),
    );
  }

  Align buildHeader(double paddingTB, BuildContext context, String str) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: paddingTB),
        child: Text(
          str,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
