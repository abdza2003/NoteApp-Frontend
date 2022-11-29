import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sampleproject/view/screen/Auth/authScreen.dart';
import 'package:sampleproject/view/widget/Auth/appLogo.dart';

class welcomeScreen extends StatefulWidget {
  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          duration: Duration(milliseconds: 400),
          child: authScreen(),
          type: PageTransitionType.rightToLeft,
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 92, 47),
              Color.fromARGB(255, 255, 103, 61),
              Color.fromARGB(255, 255, 103, 61),
              Color.fromARGB(255, 255, 101, 58),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: appLogo(titleSize: 60, thicknessSize: 4),
        ),
      ),
    );
  }
}
