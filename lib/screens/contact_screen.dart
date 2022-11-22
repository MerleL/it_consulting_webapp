import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/screens/notImplemented_screen.dart';

import '../modules/appbar_module.dart';
import '../modules/drawer_module.dart';
import '../modules/footer_module.dart';

class Contact_Screen extends StatefulWidget {
  const Contact_Screen({Key? key}) : super(key: key);

  @override
  State<Contact_Screen> createState() => _Contact_ScreenState();
}

class _Contact_ScreenState extends State<Contact_Screen> {
  final _formKey = GlobalKey<FormState>();

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

  Padding buildForm(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    // Flutter Docs. "Build a form with validation." o.D. [Online] Available: https://docs.flutter.dev/cookbook/forms/validation (Abrufdatum 18.11.2022)
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextFormField('Vorname', 'Ihren Vornamen', 1, 2),
            buildTextFormField('Name', 'Ihren Namen', 1, 2),
            buildTextFormField('Email', 'Ihre E-Mail-Adresse', 1, 2),
            buildTextFormField('Telefon', 'Ihre Telefonnummer', 1, 2),
            buildTextFormField(
                'Wie können wir Ihnen weiterhelfen?', 'Ihre Nachricht', 5, 50),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Ihre Daten werden verarbeitet.')),
                      );
                    }
                  },
                  child: const Text('Senden'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTextFormField(String useLabel, String hint, int min, int max) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: useLabel,
          border: const OutlineInputBorder(),
        ),
        maxLines: max,
        minLines: min,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Bitte geben Sie $hint ein!';
          }
          return null;
        },
      ),
    );
  }

  Padding buildContact(double usableHeight, double paddingLR, double paddingTB,
      BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Row(
        children: [
          Container(
            height: usableHeight * 0.3,
            width: MediaQuery.of(context).size.width / 2 - paddingLR - 5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/background_header.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Telefon: 1234567890',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Mail: info@mail.com',
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    'Fax: 1234567890',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: usableHeight * 0.3,
              width: MediaQuery.of(context).size.width / 2 - paddingLR - 5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/background_header.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Muster Str. 1 A',
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        '12345 Musterstadt',
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      child: Text(
                        'Standorte',
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const NotImplemented_Screen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildIntroduction(double usableHeight, double paddingLR,
      double paddingTB, BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLR, paddingTB, paddingLR, paddingTB),
      child: Text(
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
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
            'Kontakt',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
