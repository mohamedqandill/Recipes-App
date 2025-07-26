import 'package:flutter/material.dart';
import 'package:recipes/main_layout.dart';

import 'core/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const MainLayout();
        },
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.sizeOf(context).width;
    return Container(
      width: double.infinity,
      color: primaryColor,
      child: Center(
        child: ClipOval(
            child: Image.asset(
          "assets/images/Logo.png",
          width: w * 0.5,
        )),
      ),
    );
  }
}
