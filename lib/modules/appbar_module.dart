import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/modules/searchbar_module.dart';

class AppBar_Module extends StatelessWidget implements PreferredSizeWidget {
  const AppBar_Module({Key? key}) : super(key: key);

  @override
  // AppBar default: Size(100.0, 56.0)
  // M. Lalwani. "How to Get AppBar Height In Flutter ?" 13.12.2021. [Online] Available: https://flutteragency.com/get-appbar-height-in-flutter/. (Abrufdatum 23.10.2022)
  final Size preferredSize = const Size(100.0, 56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Image(
            image: AssetImage('lib/assets/images/logo_full.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.2,
                0.0,
                MediaQuery.of(context).size.width * 0.02,
                0.0),

            // A. Goodman. "Flutter: Add a Search Field to an App Bar (2 Approaches)." 09.07.2022. [Online] Available: https://www.kindacode.com/article/flutter-add-a-search-field-to-the-app-bar/. (Abrufdatum 27.10.2022)
            child: IconButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const Searchbar_Module())),
                icon: const Icon(Icons.search)),
          ),
        ],
      ),
    );
  }
}
