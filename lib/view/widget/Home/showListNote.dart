import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/homePage_Controller.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Home/ListContainer.dart';

class showListNote extends GetView<HomePageControllerImp> {
  const showListNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: controller.notes.length,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10,
        );
      },
      itemBuilder: (context, index) {
        return ListContainer(
          color: controller.notes[index]['color'] as Color,
          title: '${controller.notes[index]['title']}',
          body: '${controller.notes[index]['body']}',
          categories_type: '${controller.notes[index]['categories_type']}',
          date: '${controller.notes[index]['date']}',
          indexList: index,
          lengthList: controller.notes.length,
        );
      },
    );
  }
}
