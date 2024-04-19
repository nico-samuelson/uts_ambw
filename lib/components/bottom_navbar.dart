import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key, required this.selected});

  final int selected;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => {
        if (value == 0)
          {Navigator.pushReplacementNamed(context, '/')}
        else if (value == 1)
          {Navigator.pushReplacementNamed(context, 'discovery')}
        else if (value == 2)
          {Navigator.pushReplacementNamed(context, 'bookmark')}
        else if (value == 3)
          {Navigator.pushReplacementNamed(context, 'top-foodie')}
        else if (value == 4)
          {Navigator.pushReplacementNamed(context, 'profile')}
      },
      iconSize: 36.0,
      currentIndex: selected,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Discovery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outline),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up_outlined),
          label: 'Top Foodie',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: 'Profile',
        ),
      ],
    );
  }
}
