import 'package:flutter/material.dart';
import 'login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String button1 = 'PROVIDER';

  String button2 = 'CUSTOMER';

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterApp'),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: currentIndex == 0
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: const Text('Who are you?')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const LoginScreen();
                                },
                              ),
                            );
                            setState(() {
                              button1 = 'Proceed to login as Provider';
                            });
                          },
                          child: Text(button1)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              button2 = 'Proceed to login as Customer';
                            });
                          },
                          child: Text(button2)),
                    ],
                  ),
                )
              : Image.asset('images/119.png')),
    );
  }
}
