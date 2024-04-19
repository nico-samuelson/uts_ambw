import 'package:flutter/material.dart';
import 'package:uts_ambw/components/app_bar.dart';
import 'package:uts_ambw/components/bottom_navbar.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({
    super.key,
    required this.title,
    required this.selected,
  });

  final String title;
  final int selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MyAppBar(
          title: title,
          isHome: false,
          redirectBackToHome: true,
        ),
      ),
      bottomNavigationBar: BottomNavbar(selected: selected),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
