import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:sampleproject/background/homePageBackground.dart';
import 'package:sampleproject/view/screen/Home/drawerScreen.dart';
import 'package:sampleproject/view/screen/Home/getPages.dart';
import 'package:sampleproject/view/screen/Home/homePageScreen.dart';

class zoomDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: drawerScreen(),
      mainScreen: getHomePages(),
      menuScreenWidth: double.infinity,
      borderRadius: 30,
      showShadow: true,
      angle: 0.0,
      menuBackgroundColor: Color.fromARGB(255, 255, 121, 84),
      slideWidth: 250,
      style: DrawerStyle.defaultStyle,
    );
  }
}
