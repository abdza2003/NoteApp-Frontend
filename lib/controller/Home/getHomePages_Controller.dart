import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/view/screen/Home/categoriesScreen.dart';
import 'package:sampleproject/view/screen/Home/favoriteScreen.dart';
import 'package:sampleproject/view/screen/Home/homePageScreen.dart';

abstract class getHomePagesController extends GetxController {
  changePageIndex(int selectPageIndex);
}

class getHomePagesControllerImp extends getHomePagesController {
  late int pageIndex;
  List<Map<Object, Object>> pagesInf = [
    {
      'page': homePageScreen(),
      'page_name': '',
      'page_icon': Icons.home_outlined,
      'selectPage_icon': Icons.home,
    },
    {
      'page': categoriesScreen(),
      'page_name': '',
      'page_icon': Icons.category_outlined,
      'selectPage_icon': Icons.category,
    },
    {
      'page': favoriteScreen(),
      'page_name': '',
      'page_icon': Icons.favorite_outline,
      'selectPage_icon': Icons.favorite,
    },
  ];

  changePageIndex(int selectPageIndex) {
    pageIndex = selectPageIndex;
    update();
  }

  @override
  void onInit() {
    pageIndex = 0;
    super.onInit();
  }
}
