import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(
            child: Text('Admin Page')),
      ),
      drawer:  Drawer(
          child:ListView(
            children:  [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.green,
                ), child:Column(
                children: const [
                ],
              ),
              ),
              Column(
                children: const [
                  ListTile(
                    title: Text('Home'),
                    leading:Icon(Icons.home),
                  ),
                  ListTile(
                    title: Text('Logout'),
                    leading:Icon(Icons.logout),
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}