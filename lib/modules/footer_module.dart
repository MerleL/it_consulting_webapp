import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/screens/contact_screen.dart';
import 'package:it_consulting_webapp/screens/notImplemented_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer_Module extends StatefulWidget {
  const Footer_Module({Key? key}) : super(key: key);

  //const Footer_Module(ScrollController scrollController, {Key? key}) : super(key: key);

  @override
  State<Footer_Module> createState() => _Footer_ModuleState();
}

class _Footer_ModuleState extends State<Footer_Module> {
  @override
  Widget build(BuildContext context) {
    /* usable screen height = entire screen height - status bar height - appbar height
    * Tagmalogic. "Widgets sizes relative to screen size in Flutter using MediaQuery." 04.01.2020. [Online] Available: https://medium.com/tagmalogic/widgets-sizes-relative-to-screen-size-in-flutter-using-mediaquery-3f283afc64d6 (Abrufdatum 23.10.2022)
    */
    final double usableHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        AppBar().preferredSize.height;

    final double paddingLR = MediaQuery.of(context).size.width * 0.07;
    final double paddingTB = MediaQuery.of(context).size.width * 0.04;

    //ScrollController scrollController = ScrollController();

    return Container(
      width: double.infinity,
      height: usableHeight * 0.35,
      color: Colors.teal,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            paddingLR / 2, paddingTB, paddingLR / 2, paddingTB / 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                buildLogo(),
                Padding(
                  padding: EdgeInsets.only(left: paddingLR),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          buildSocialMedia(
                              paddingLR,
                              const Icon(Icons.linked_camera),
                              'https://www.linkedin.com/'),
                          buildSocialMedia(
                              paddingLR,
                              const Icon(Icons.linked_camera),
                              'https://www.xing.com/'),
                          buildSocialMedia(
                              paddingLR,
                              const Icon(Icons.linked_camera),
                              'https://www.instagram.com/'),
                          buildSocialMedia(
                              paddingLR,
                              const Icon(Icons.linked_camera),
                              'https://de-de.facebook.com/login.php'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: buildTextLinks(paddingTB, paddingLR, context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                buildCopyright(context),
                Padding(
                  padding: const EdgeInsets.only(left: 197),
                  child: buildPageStartButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  IconButton buildPageStartButton() {
    return IconButton(
      icon: const Icon(Icons.arrow_upward),
      onPressed: () {
        /* Flutter Campus. "How to add ʺScroll Back to Topʺ Button in Flutter App." o.D. [Online] Available: https://www.fluttercampus.com/guide/218/add-scroll-back-to-top-button/ (Abrufdatum 17.11.2022)
          widget.scrollController.animateTo(0,
              duration: const Duration(milliseconds: 3),
              curve: Curves.linear);
         */
      },
    );
  }

  Text buildCopyright(BuildContext context) {
    return Text(
      '© Copyright',
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  List<Widget> buildTextLinks(
      double paddingTB, double paddingLR, BuildContext context) {
    return [
      Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotImplemented_Screen(),
                ),
              );
            },
            child: Text(
              'Cookie-Einstellungen',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Contact_Screen(),
                ),
              );
            },
            child: Text(
              'Kontakt',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: paddingLR * 2),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NotImplemented_Screen(),
                  ),
                );
              },
              child: Text(
                'Datenschutz',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotImplemented_Screen(),
                ),
              );
            },
            child: Text(
              'Impressum',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    ];
  }

  Padding buildSocialMedia(double paddingLR, Icon icon, String url) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingLR / 2),
      child: IconButton(
        onPressed: () {
          url = url;
          launchURL(url);
        },
        icon: icon,
      ),
    );
  }

  CircleAvatar buildLogo() {
    return const CircleAvatar(
      backgroundImage: AssetImage('lib/assets/images/logo_icon.png'),
    );
  }

  /* open url
  * A. Dhanani. "How to Open Web URL From Flutter Code?" 01. Januar 2021. [Online] Available: https://flutteragency.com/how-to-open-web-url-from-flutter-code/ (Abrufdatum 25.10.2022)*/
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
