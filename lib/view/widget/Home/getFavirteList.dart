import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/favoriteScreen_Controller.dart';
import 'package:sampleproject/controller/Home/getHomePages_Controller.dart';
import 'package:sampleproject/controller/Home/homePage_Controller.dart';
import 'package:sampleproject/view/widget/Home/EmptyList.dart';
import 'package:sampleproject/view/widget/Home/showFavoriteList.dart';
import 'package:sampleproject/view/widget/Home/showListNote.dart';

class getFavirteList extends GetView<favoriteScreenControllerImp> {
  @override
  Widget build(BuildContext context) {
    if (controller.allFavorite.isEmpty) {
      return EmptyList(
        bodyTitle: 'Nothing has been added to \nfavorites yet .. !!',
        pathImage: 'assets/images/addNote.svg',
      );
    } else {
      return showFavoriteList();
    }
  }
}
