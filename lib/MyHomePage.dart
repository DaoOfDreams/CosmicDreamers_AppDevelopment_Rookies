import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Who are you?',
            ),
            Options(),
          ],
        ),
      ),
    );
  }
}

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton( style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue),
            onPressed: () {
              setState(() {
                print('Button pressed ...');
              });
            },
            child: const Text('Consumer')

        ),
        ElevatedButton( style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green),
            onPressed: () {
            },
            child: const Text('Provider')
        ),
      ],
    );
  }
}
