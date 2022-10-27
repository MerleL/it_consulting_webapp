import 'package:flutter/material.dart';

import '../modules/appbar_module.dart';
import '../modules/drawer_module.dart';
import '../modules/footer_module.dart';

class Contact_Screen extends StatefulWidget {
  const Contact_Screen({Key? key}) : super(key: key);

  @override
  State<Contact_Screen> createState() => _Contact_ScreenState();
}

class _Contact_ScreenState extends State<Contact_Screen> {
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
              buildContact(usableHeight, paddingLR, paddingTB, context),
              buildForm(usableHeight, paddingLR, paddingTB, context),
              const Footer_Module(),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildForm(
      double usableHeight, double paddingLR, double paddingTB, BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Placeholder(
        fallbackHeight: usableHeight,
      ),
    );
  }

  Padding buildContact(
      double usableHeight, double paddingLR, double paddingTB, BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Placeholder(
        fallbackHeight: usableHeight * 0.7,
      ),
    );
  }

  Padding buildIntroduction(
      double usableHeight, double paddingLR, double paddingTB, BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Text(
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  Container buildHero(
      double usableHeight, double paddingLR, double paddingTB, BuildContext context) {
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
            'Kontakt',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
