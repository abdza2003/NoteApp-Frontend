import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/categoriesScreen_Controller.dart';
import 'package:sampleproject/controller/Home/getHomePages_Controller.dart';
import 'package:sampleproject/controller/Home/homePage_Controller.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/view/widget/Home/EmptyList.dart';
import 'package:sampleproject/view/widget/Home/showCategorieList.dart';
import 'package:sampleproject/view/widget/Home/showListNote.dart';

class getCategoriesList extends GetView<categoriesScreenControllerImp> {
  @override
  Widget build(BuildContext context) {
    if (controller.allCategories.isEmpty) {
      return Padding(
        padding: EdgeInsets.only(top: SizeConfig(context).heigthScreen / 15),
        child: EmptyList(
          bodyTitle: 'do you not have any folder\n yet .. !!',
          pathImage: 'assets/images/addFolder.svg',
        ),
      );
    } else {
      return showCategorieList();
    }
  }
}
