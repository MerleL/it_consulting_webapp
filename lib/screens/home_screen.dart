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
              buildIntroduction(usableHeight),
              buildNews(usableHeight),
              buildServices(usableHeight),
              buildCareer(usableHeight),
              buildStories(usableHeight),
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

  Placeholder buildStories(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.7,
    );
  }

  Placeholder buildCareer(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.7,
    );
  }

  Placeholder buildServices(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.7,
    );
  }

  Placeholder buildNews(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.1,
    );
  }

  Placeholder buildIntroduction(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.5,
    );
  }

  Placeholder buildHero(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.8,
    );
  }
}
