import 'package:flutter/material.dart';

class Searchbar_Module extends StatefulWidget implements PreferredSizeWidget {
  const Searchbar_Module({Key? key}) : super(key: key);

  @override
  State<Searchbar_Module> createState() => _Searchbar_ModuleState();

  @override
  // AppBar default: Size(100.0, 56.0)
  // M. Lalwani. "How to Get AppBar Height In Flutter ?" 13.12.2021. [Online] Available: https://flutteragency.com/get-appbar-height-in-flutter/. (Abrufdatum 23.10.2022)
  final Size preferredSize = const Size(100.0, 56.0);
}

class _Searchbar_ModuleState extends State<Searchbar_Module> {
  // Clear TextField
  // GeeksforGeeks. "Clear TextField in Flutter." 20.06.2022. [Online] Available: https://www.geeksforgeeks.org/clear-textfield-in-flutter/. (Abrufdatum 27.10.2022)
  final searchText = TextEditingController();

  void clearText() {
    searchText.clear();
  }

  // Build a search bar
  // A. Goodman. "Flutter: Add a Search Field to an App Bar (2 Approaches)." 09.07.2022. [Online] Available: https://www.kindacode.com/article/flutter-add-a-search-field-to-the-app-bar/. (Abrufdatum 27.10.2022)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      clearText();
                    },
                  ),
                  hintText: 'Wonach suchen Sie?',
                  border: InputBorder.none),
              controller: searchText,
            ),
          ),
        ),
      ),
    );
  }
}
