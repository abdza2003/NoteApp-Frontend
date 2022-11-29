import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/favoriteScreen_Controller.dart';
import 'package:sampleproject/controller/Home/getHomePages_Controller.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Home/ListContainer.dart';
import 'package:sampleproject/view/widget/Home/getFavirteList.dart';

class favoriteScreen extends StatelessWidget {
  // favoriteScreenControllerImp favoriteController = Get.find();
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => favoriteScreenControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: Themes().headline2.copyWith(
                fontSize: 20,
                color: Colors.black,
              ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: getFavirteList(),
    );
  }
}
