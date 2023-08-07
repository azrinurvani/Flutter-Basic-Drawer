import 'package:flutter/material.dart';
import 'package:flutter_basic_21_drawer/page_satu.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        // leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.red,
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Menu Pilihan",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                size: 35,
              ),
              title: const Text(
                "Home",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const PageSatu();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 35,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const SettingsPage();
                }));
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Some Text Here !",
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
