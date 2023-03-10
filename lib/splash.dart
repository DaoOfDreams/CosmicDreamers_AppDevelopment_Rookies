import 'package:flutter/material.dart';
import 'dart:async';
import 'MyHomePage.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                const Home(),
                )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(

          child:Column(
            children: [
              const SizedBox(height: 200),
              Container(
                  width: 180,
                  height: 180,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/splash.png"),
                      )
                  ),


              ),
              const SizedBox(height: 100),
              Column(

                children: const [
                  Text('Bite',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      )),
                ],
              )
            ],
          ),
    ),);
  }
}
