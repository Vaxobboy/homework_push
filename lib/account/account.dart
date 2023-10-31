
import 'package:flutter/material.dart';
import 'package:widgets_home3/search/search.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const route = "/prfile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Account Page 👨🏻‍💻"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Icon(Icons.abc),
            const Icon(Icons.gamepad),
            const Icon(Icons.install_mobile),
                      FloatingActionButton(
            backgroundColor: Colors.green[100],
              child: const Icon(Icons.self_improvement_rounded),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const SearchPage(),
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