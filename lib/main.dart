
import 'package:flutter/material.dart';
import 'package:widgets_home3/account/account.dart';
import 'package:widgets_home3/home/home.dart';
import 'package:widgets_home3/search/search.dart';
import 'package:widgets_home3/setting/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        SettingPage.route: (context) => const SettingPage(),
        ProfilePage.route: (context) => const ProfilePage(),
        // ignore: equal_keys_in_map
        SearchPage.route: (context) => const SearchPage(),
      },
    );
  }
}