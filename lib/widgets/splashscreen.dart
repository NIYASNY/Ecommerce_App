import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 55),
            child: Text('Score Your Style', style: TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }
}
