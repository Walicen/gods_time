import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Row(
          children: [
            NavigationRail(
              destinations: const [
                NavigationRailDestination(icon: Icon(Icons.home_filled), label: Text('Home')),
                NavigationRailDestination(
                    icon: Icon(Icons.menu_book_rounded), label: Text('Bible')),
              ],
              selectedIndex: currentSelectedIndex,
              useIndicator: true,
              onDestinationSelected: (int index) {
                debugPrint('index: $index');
                setState(() {
                  currentSelectedIndex = index;
                });
              },
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: Center(
                child: Text('selectedIndex: $currentSelectedIndex'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
