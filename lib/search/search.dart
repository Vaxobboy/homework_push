
import 'package:flutter/material.dart';
import 'package:widgets_home3/home/home.dart';
import 'package:widgets_home3/setting/setting.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const route = "/search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Search Page 🔎"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Icon(Icons.pause_circle_outline_sharp),
            const Icon(Icons.face),
            const Icon(Icons.g_translate_sharp),
                 FloatingActionButton(
            heroTag: "a",
              backgroundColor: Colors.yellow,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                // Navigator.push(
                //     context,
                //   MaterialPageRoute(
                //       builder: (context) => const SettingPage(),
                //   ),
                // );
                Navigator.pushNamed(context, HomePage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.house),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "b",
            backgroundColor: Colors.green,
              child: const Icon(Icons.settings),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const SettingPage(),
                  ),
                );
              }
          )
          ],
        ),
      ),
      
    );
  }
}