import 'package:flutter/material.dart';
import 'package:horyal_coffee/views/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 9000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      children: [
        Container(
          width: w,
          height: h * 0.8,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage("assets/spalash.webp"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image.asset(
          "assets/logo.png",
          height: 120,
        )
      ],
    ));
  }
}
