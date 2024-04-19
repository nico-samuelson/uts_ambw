import 'package:flutter/material.dart';
import 'package:uts_ambw/components/app_bar.dart';
import 'package:uts_ambw/components/bottom_navbar.dart';
import 'package:uts_ambw/components/big_card.dart';
import 'package:uts_ambw/components/search_bar.dart';

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MyAppBar(
          title: title,
          isHome: false,
          redirectBackToHome: true,
        ),
      ),
      bottomNavigationBar: const BottomNavbar(
        selected: 0,
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          const CustomSearchBar(hint: "Search..."),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: data.map((d) {
                      return BigCard(data: d);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
