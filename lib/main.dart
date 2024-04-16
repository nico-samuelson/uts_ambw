import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uts_ambw/components/bottom_navbar.dart';
import 'package:uts_ambw/components/horizontal_list_section.dart';
import 'package:uts_ambw/components/input_border.dart';
import 'package:faker/faker.dart';
import 'package:uts_ambw/pages/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var faker = Faker();

    final List<Map<String, String>> popular = List.generate(
        10,
        (index) => {
              'name': faker.food.restaurant(),
              'image': faker.image.image(),
              'address': faker.address.streetAddress(),
              'category': "${faker.food.cuisine()}, ${faker.address.country()}",
            });

    final List<Map<String, String>> deals = List.generate(
        10,
        (index) => {
              'name': faker.food.dish(),
              'image': faker.image.image(),
              'address': faker.address.streetAddress(),
              'category': "${faker.food.cuisine()}, ${faker.address.country()}",
            });

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.white, background: Colors.grey.shade100),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.amber,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey.shade500,
            unselectedLabelStyle: TextStyle(color: Colors.grey.shade500),
            elevation: 0.0,
          ),
          useMaterial3: true,
        ),
        routes: {
          'popular': (context) => DetailPage(
                data: popular,
                title: "Most Popular",
              ),
          'deals': (context) => DetailPage(
                data: deals,
                title: "Meal Deals",
              ),
        },
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Sydney CBD",
                style: TextStyle(fontWeight: FontWeight.bold),
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
              surfaceTintColor: Colors.white,
              // Search bar
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 16.0),
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
                      hintText: 'Search for restaurants...',
                    ),
                  ),
                ),
              ),
              centerTitle: true,
            ),
            bottomNavigationBar: const BottomNavbar(),
            body: ListView(
              padding: const EdgeInsets.only(bottom: 80.0),
              scrollDirection: Axis.vertical,
              children: [
                // Hero Post
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Stack(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Column(children: [
                                Text(
                                  "Thai Style",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "12 Places",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,

                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
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
                                      borderRadius: BorderRadius.circular(8.0),
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
                                      borderRadius: BorderRadius.circular(8.0),
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
                                      borderRadius: BorderRadius.circular(8.0),
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
            )));
  }
}

