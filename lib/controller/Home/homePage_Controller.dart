import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/core/constant/routes.dart';

abstract class HomePageController extends GetxController {
  createNewNote();
}

class HomePageControllerImp extends HomePageController {
  List<Map<Object, Object>> notes = [
    {
      'title': 'How To Draw A Professional Wireframe',
      'body':
          'For Wireframe Design , You Need To Have A Pen And Paper With You , And Using These Two , You Can Design The Idea You Want On Paper For Web Or Mobile , Just Learn ... ',
      'categories_type': 'categories_type',
      'date': '2020/05/09',
      'color': Colors.orange[100] as Color
    },
    {
      'title': 'Ways to succeed early',
      'body': '',
      'categories_type': 'categories_type',
      'date': '2020/05/09',
      'color': Colors.teal[100] as Color
    },
    {
      'title': 'scientific facts of space',
      'body': '',
      'categories_type': 'categories_type',
      'date': '2020/05/09',
      'color': Colors.red[100] as Color
    },
    {
      'title': 'How To Draw A Professional Wireframe',
      'body':
          'For Wireframe Design , You Need To Have A Pen And Paper With You , And Using These Two , You Can Design The Idea You Want On Paper For Web Or Mobile , Just Learn ... ',
      'categories_type': 'categories_type',
      'date': '2020/05/09',
      'color': Colors.orange[100] as Color
    },
    {
      'title': 'scientific facts of space',
      'body': '',
      'categories_type': 'categories_type',
      'date': '2020/05/09',
      'color': Colors.red[100] as Color
    },
  ];

  @override
  createNewNote() {
    Get.toNamed(AppRoute.createNewNotes);
  }
}
