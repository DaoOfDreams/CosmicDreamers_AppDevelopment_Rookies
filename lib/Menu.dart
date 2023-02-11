import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.black,
        ),
        body: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 500,
              ),
              Center(
                  child: Row(
                children: [
                  const SizedBox(
                    width: 300,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.black, // <-- Button color
                      foregroundColor: Colors.red, // <-- Splash color
                    ),
                    child: const Icon(Icons.feedback, color: Colors.white),
                  ),
                ],
              )),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text('Home'),
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Register as provider'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
