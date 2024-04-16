import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
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
                onPressed: () {},
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (value) => {},
              iconSize: 36.0,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.amber,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.grey.shade500,
              unselectedLabelStyle: TextStyle(color: Colors.grey.shade500),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.amber,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.location_on_outlined,
                  ),
                  label: 'Discovery',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark_outline,
                  ),
                  label: 'Bookmark',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.trending_up_outlined,
                  ),
                  label: 'Top Foodie',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline_rounded,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8.0),
                      disabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1.0),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade500,
                      ),
                      hintText: 'Search for restaurants...',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.bottomCenter,
                    children: [
                      SizedBox(
                        height: 230,
                        width: MediaQuery.of(context).size.width,
                        child: const Image(
                          image: AssetImage('lib/images/image.png'),
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
                            crossAxisAlignment: CrossAxisAlignment.end,
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
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
