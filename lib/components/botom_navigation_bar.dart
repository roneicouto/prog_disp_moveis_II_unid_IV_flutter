import 'package:flutter/material.dart';

class BotomNavigationBar extends StatefulWidget {
  const BotomNavigationBar({super.key});

  @override
  State<BotomNavigationBar> createState() => _BotomNavigationBarState();
}

class _BotomNavigationBarState extends State<BotomNavigationBar> {
  List<BottomNavigationBarItem> _buildNavigationItems() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: 'Menu 1',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: 'Menu 2',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: 'Menu 3',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    int selectedindex = 0;
    return BottomNavigationBar(
      items: _buildNavigationItems(),
      currentIndex: selectedindex,
      selectedItemColor: Colors.amber[800],
      onTap: (index) {
        setState(() {
          selectedindex = index;
        });
      },
    );
  }
}
