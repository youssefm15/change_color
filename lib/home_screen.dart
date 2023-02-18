import 'dart:math';

import 'package:color_changing/constants/colors.dart';
import 'package:color_changing/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Home Screen called from material app.
class HomeScreen extends StatefulWidget {
  /// Constant constructor of HomeScreen class.
  static const String name = '/home-screen';

  /// Constant constructor of HomeScreen class.
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomeScreen> {
  // Color _backgroundColor = Colors.white;
  final double half = 0.5;

  //function that randomly generate color and then
  // set the _backgroundColor to that color.
  void _changeBackgroundColor() {
    //we can also use random class to generate numbers from 0.0 to 1.0

    context.read<HomeProvider>().backgroundColor =
        Color((Random().nextDouble() * kWhiteHex).toInt()).withOpacity(1.0);
  }

  //Another way to generate random color
  //String randomColor() {
  //   var random = Random();
  //   int r = random.nextInt(255);
  //   int g = random.nextInt(255);
  //   int b = random.nextInt(255);
  //
  //   return 'rgb($r,$g,$b)';
  // }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();

    return Scaffold(
      backgroundColor: provider.backgroundColor,
      body: InkWell(
        onTap: () => _changeBackgroundColor(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Hey There',
                style: TextStyle(
                  color: checkLuminance() ? Colors.black : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool checkLuminance() =>
      context.read<HomeProvider>().backgroundColor.computeLuminance() > half;
}
