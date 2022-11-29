import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sampleproject/background/homePageBackground.dart';
import 'package:sampleproject/controller/Home/homePage_Controller.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Auth/appLogo.dart';
import 'package:sampleproject/view/widget/Home/getNotesList.dart';
import 'package:sampleproject/view/widget/Home/showListNote.dart';

class homePageScreen extends StatefulWidget {
  @override
  State<homePageScreen> createState() => _homePageScreenState();
}

class _homePageScreenState extends State<homePageScreen> {
  HomePageControllerImp homePageControllerImp = Get.find();
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: homePageBackground(),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 100,
          titleSpacing: 10,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.search,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                  homePageControllerImp.createNewNote();
                },
                icon: FaIcon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
          ],
          title: Container(
            width: 150,
            padding: EdgeInsets.only(bottom: 50),
            alignment: Alignment.centerRight,
            child: appLogo(titleSize: 25, thicknessSize: 3),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: getNotesList(),
        ),
      ),
    );
  }
}
