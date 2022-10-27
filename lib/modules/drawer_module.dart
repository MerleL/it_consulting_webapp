import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/screens/about_screen.dart';
import 'package:it_consulting_webapp/screens/career_screen.dart';
import 'package:it_consulting_webapp/screens/contact_screen.dart';
import 'package:it_consulting_webapp/screens/home_screen.dart';
import 'package:it_consulting_webapp/screens/notImplemented_screen.dart';

class Drawer_Module extends StatelessWidget {
  const Drawer_Module({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
        children: [
          Container(
            height: AppBar().preferredSize.height,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'MENÜ',
                ),
              ),
            ),
          ),
          buildListTile(context, 'Home', const Home_Screen()),
          buildListTile(context, 'Über Uns', const About_Screen()),
          buildListTile(context, 'Leistungen', const NotImplemented_Screen()),
          buildListTile(context, 'Karriere', const Career_Screen()),
          buildListTile(context, 'Kontakt', const Contact_Screen()),
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close)),
        ],
      ),
    );
  }

  ListTile buildListTile(BuildContext context, String text, Widget screen) {
    return ListTile(
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
    );
  }
}
