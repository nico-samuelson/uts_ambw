import 'package:flutter/material.dart';
import 'package:uts_ambw/components/app_bar.dart';
import 'package:uts_ambw/components/bottom_navbar.dart';
import 'package:uts_ambw/components/search_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:uts_ambw/components/horizontal_list_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.popular,
    required this.deals,
  });

  final List<Map<String, String>> popular;
  final List<Map<String, String>> deals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: MyAppBar(
            title: "Sydney CBD",
            isHome: true,
            redirectBackToHome: false,
          ),
        ),
        bottomNavigationBar: const BottomNavbar(
          selected: 0,
        ),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            const CustomSearchBar(hint: 'Search for restaurants...'),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Column(
                      children: [
                        // Hero Post
                        Stack(
                          fit: StackFit.loose,
                          alignment: Alignment.bottomCenter,
                          children: [
                            SizedBox(
                              height: kIsWeb
                                  ? MediaQuery.of(context).size.height / 2
                                  : MediaQuery.of(context).size.height / 3,
                              width: MediaQuery.of(context).size.width,
                              child: const Image(
                                image: AssetImage('images/hero.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: 75,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black.withOpacity(0.8),
                                  ],
                                ),
                                // color: Colors.black.withOpacity(0.5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Thai Style",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "12 Places",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,

                                        // crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        HorizontalListSection(
                          title: "Most Popular",
                          detailRoute: "popular",
                          data: popular,
                        ),
                        HorizontalListSection(
                          title: "Meal Deals",
                          detailRoute: "deals",
                          data: deals,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
