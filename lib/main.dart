import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Auth/authScreen_controller.dart';
import 'package:sampleproject/controller/Auth/changePassword_Controller.dart';
import 'package:sampleproject/controller/Auth/forgetPasswordConfirmation_Controller.dart';
import 'package:sampleproject/controller/Auth/newAccountConfirmation_controller.dart';
import 'package:sampleproject/controller/Auth/resetPassword_controller.dart';
import 'package:sampleproject/controller/Home/categoriesScreen_Controller.dart';
import 'package:sampleproject/controller/Home/createNewNote_Controller.dart';
import 'package:sampleproject/controller/Home/favoriteScreen_Controller.dart';
import 'package:sampleproject/controller/Home/getHomePages_Controller.dart';
import 'package:sampleproject/controller/Home/homePage_Controller.dart';
import 'package:sampleproject/core/constant/getPages.dart';
import 'package:sampleproject/core/constant/routes.dart';
import 'package:sampleproject/test/zoomDrawerScreen.dart';
import 'package:sampleproject/view/screen/Home/categoriesScreen.dart';
import 'package:sampleproject/view/screen/Home/createNewNotes.dart';
import 'package:sampleproject/view/screen/Home/favoriteScreen.dart';
import 'package:sampleproject/view/screen/Home/getPages.dart';
import 'package:sampleproject/view/screen/Home/homePageScreen.dart';

void main() {
  runApp(mainApp());
}

class mainApp extends StatelessWidget {
  AuthScreenControllerImp s1 = Get.put(AuthScreenControllerImp());

  newAccountConfirmationControllerImp s2 =
      Get.put(newAccountConfirmationControllerImp());

  resetPasswordControllerImp s3 = Get.put(resetPasswordControllerImp());

  forgetPasswordConfirmationControllerImp s4 =
      Get.put(forgetPasswordConfirmationControllerImp());

  changePasswordControllerImp s5 = Get.put(changePasswordControllerImp());

  getHomePagesControllerImp s6 = Get.put(getHomePagesControllerImp());

  HomePageControllerImp s7 = Get.put(HomePageControllerImp());

  categoriesScreenControllerImp s8 = Get.put(categoriesScreenControllerImp());

  favoriteScreenControllerImp s9 = Get.put(favoriteScreenControllerImp());

  createNewNoteControllerImp s10 = Get.put(createNewNoteControllerImp());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.welcomeScreen,
      getPages: GetPages().getPages,
      // home: zoomDrawerScreen(),
    );
  }
}
