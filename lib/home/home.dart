
import 'package:flutter/material.dart';
import 'package:widgets_home3/account/account.dart';
import 'package:widgets_home3/search/search.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page 🏠"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("I'm Home Page"),
            
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "a",
              backgroundColor: Colors.red,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                // Navigator.push(
                //     context,
                //   MaterialPageRoute(
                //       builder: (context) => const SettingPage(),
                //   ),
                // );
                Navigator.pushNamed(context, SearchPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.search),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "b",
            backgroundColor: Colors.blue,
              child: const Icon(Icons.person),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                  ),
                );
              }
          )
        ],
      ),
    );
  }
}