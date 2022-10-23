import 'package:flutter/material.dart';

import '../modules/appbar_module.dart';
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

    return SafeArea(
      child: Scaffold(
        appBar: const AppBar_Module(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildHero(usableHeight),
              buildIntroduction(usableHeight),
              buildContact(usableHeight),
              buildForm(usableHeight),
              const Footer_Module(),
            ],
          ),
        ),
      ),
    );
  }

  Placeholder buildForm(double usableHeight) {
    return Placeholder(
              fallbackHeight: usableHeight,
            );
  }

  Placeholder buildContact(double usableHeight) {
    return Placeholder(
              fallbackHeight: usableHeight * 0.7,
            );
  }

  Placeholder buildIntroduction(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.3,
    );
  }

  Placeholder buildHero(double usableHeight) {
    return Placeholder(
      fallbackHeight: usableHeight * 0.5,
    );
  }
}
