import 'package:flutter/material.dart';
import 'package:widgets_home3/account/account.dart';


class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static const route = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        // For things inside the AppBar ⇣
        foregroundColor: Color.fromARGB(255, 222, 24, 24),
       
        shadowColor: Colors.black,
        elevation: 10,
        
                leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Settings Page ⚙️"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Icon(Icons.settings_applications_sharp),
            const Icon(Icons.settings_bluetooth),
            const Icon(Icons.settings_backup_restore_outlined),
                      FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 60, 210, 185),
              child: const Icon(Icons.person),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
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

