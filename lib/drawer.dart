import 'package:flutter/material.dart';

class Drawer11 extends StatelessWidget {
  const Drawer11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.black,
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
                onTap: (){},
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: (){},
              ),
            ],
          ),
        ));
  }
}
