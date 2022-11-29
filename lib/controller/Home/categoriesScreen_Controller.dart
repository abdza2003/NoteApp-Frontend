import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class categoriesScreenController extends GetxController {}

class categoriesScreenControllerImp extends categoriesScreenController {
  List<Map<Object, Object>> allCategories = [
    {
      'cate_name': 'Desgin',
      'cate_color': Colors.purple as Color,
      'cate_note_count': 29,
    },
    {
      'cate_name': 'Success',
      'cate_color': Colors.lightBlue as Color,
      'cate_note_count': 10,
    },
    {
      'cate_name': 'Freelancer',
      'cate_color': Colors.green as Color,
      'cate_note_count': 16,
    },
    {
      'cate_name': 'else',
      'cate_color': Colors.orange as Color,
      'cate_note_count': 18,
    },
  ];
}
