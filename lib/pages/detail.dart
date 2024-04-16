import 'package:flutter/material.dart';
import 'package:uts_ambw/components/bottom_navbar.dart';
import 'package:uts_ambw/components/input_border.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.data,
    required this.title,
  });

  final List<Map<String, String>> data;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Navigator.of(context).pop();
          },
        ),
        // Search bar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 16.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8.0),
                focusColor: Colors.amber.shade600,
                focusedBorder: inputBorder(true),
                enabledBorder: inputBorder(false),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                hintText: 'Search..',
              ),
            ),
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
