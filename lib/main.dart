import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:uts_ambw/pages/detail_page.dart';
import 'package:uts_ambw/pages/home_page.dart';
import 'package:uts_ambw/pages/other_page.dart';

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
              'image': faker.image
                  .image(random: true, keywords: ['food', 'restaurants']),
              'address':
                  "${faker.randomGenerator.integer(1000, min: 1)} ${faker.address.streetName()}",
              'category':
                  "${faker.food.cuisine()}, ${faker.address.countryCode()}",
            });

    final List<Map<String, String>> deals = List.generate(
        10,
        (index) => {
              'name': faker.food.dish(),
              'image': faker.image
                  .image(random: true, keywords: ['food', 'restaurants']),
              'address':
                  "${faker.randomGenerator.integer(1000, min: 1)} ${faker.address.streetName()}",
              'category':
                  "${faker.food.cuisine()}, ${faker.address.countryCode()}",
            });

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.white, background: Colors.grey.shade50),
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
                title: "Most Popular",
                data: popular,
              ),
          'deals': (context) => DetailPage(
                title: "Meal Deals",
                data: deals,
              ),
          'discovery': (context) => const OtherPage(
                title: "Discovery",
                selected: 1,
              ),
          'bookmark': (context) => const OtherPage(
                title: "Bookmark",
                selected: 2,
              ),
          'top-foodie': (context) => const OtherPage(
                title: "Top Foodie",
                selected: 3,
              ),
          'profile': (context) => const OtherPage(
                title: "Profile",
                selected: 4,
              ),
        },
        home: HomePage(popular: popular, deals: deals));
  }
}

