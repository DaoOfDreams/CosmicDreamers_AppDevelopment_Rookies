import 'package:flutter/material.dart';
import 'package:bite/CustomerLogin.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String button = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    image: AssetImage("assets/images/food.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 50,vertical: 20),
                  child: Text(
                    'Bite',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Color(0xFF101213),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 50,),
                  child: Text(
                    'Bite is a mobile app that connects people with surplus food from local restaurants and supermarkets. Our goal is to reduce food waste and provide food to those in need by connecting people with surplus food in their community.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Color(0xFF101213),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 150),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const LoginScreen();
                        },
                      ),
                    );
                    button = 'Proceed to login';
                  });
                },
                child: Text(button)),
          ],
        ),
      ),
    );
  }
}
