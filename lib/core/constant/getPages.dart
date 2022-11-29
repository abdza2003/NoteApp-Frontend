import 'package:get/get.dart';
import 'package:sampleproject/core/constant/routes.dart';
import 'package:sampleproject/test/zoomDrawerScreen.dart';
import 'package:sampleproject/view/screen/Auth/changePasswordScreen.dart';
import 'package:sampleproject/view/screen/Auth/authScreen.dart';
import 'package:sampleproject/view/screen/Auth/changePasswordScreen.dart';
import 'package:sampleproject/view/screen/Auth/createdNewAccountSuccessfully.dart';
import 'package:sampleproject/view/screen/Auth/forgetPasswordConfirmation.dart';
import 'package:sampleproject/view/screen/Auth/newAccountConfirmation.dart';
import 'package:sampleproject/view/screen/Auth/resetPasswordSuccessfully.dart';
import 'package:sampleproject/view/screen/Auth/resetPassword.dart';
import 'package:sampleproject/view/screen/Auth/welcomeScreen.dart';
import 'package:sampleproject/view/screen/Home/createNewNotes.dart';

class GetPages {
  List<GetPage> getPages = [
    GetPage(name: AppRoute.welcomeScreen, page: () => welcomeScreen()),
    GetPage(name: AppRoute.authScreen, page: () => authScreen()),
    GetPage(name: AppRoute.resetPassword, page: () => resetPassword()),
    GetPage(
        name: AppRoute.newAccountConfirmation,
        page: () => newAccountConfirmation()),
    GetPage(
        name: AppRoute.createdNewAccountSuccessfully,
        page: () => createdNewAccountSuccessfully()),
    GetPage(
        name: AppRoute.forgetPasswordConfirmation,
        page: () => forgetPasswordConfirmation()),
    GetPage(
        name: AppRoute.resetPasswordSuccessfully,
        page: () => resetPasswordSuccessfully()),
    GetPage(
        name: AppRoute.changePasswordScreen,
        page: () => changePasswordScreen()),
    GetPage(name: AppRoute.zoomDrawerScreen, page: () => zoomDrawerScreen()),
    GetPage(name: AppRoute.createNewNotes, page: () => createNewNotes()),
  ];
}
