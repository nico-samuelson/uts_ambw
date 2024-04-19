import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.title,
    required this.isHome,
    required this.redirectBackToHome,
  });

  final String title;
  final bool isHome;
  final bool redirectBackToHome;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.amber,
        ),
        onPressed: () {
          if (!isHome) {
            redirectBackToHome
                ? Navigator.pushNamed(context, '/')
                : Navigator.of(context).pop();
          }
        },
      ),
      surfaceTintColor: Colors.white,
      centerTitle: true,
    );
  }
}
