import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/favoriteScreen_Controller.dart';
import 'package:sampleproject/view/widget/Home/ListContainer.dart';

class showFavoriteList extends StatelessWidget {
  const showFavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<favoriteScreenControllerImp>(
      builder: ((controller) => Padding(
            padding: EdgeInsets.all(20),
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: controller.allFavorite.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: ((context, index) {
                return ListContainer(
                  color: controller.allFavorite[index]['color'] as Color,
                  title: '${controller.allFavorite[index]['title']}',
                  body: '${controller.allFavorite[index]['body']}',
                  categories_type:
                      '${controller.allFavorite[index]['categories_type']}',
                  date: '${controller.allFavorite[index]['date']}',
                  indexList: index,
                  lengthList: controller.allFavorite.length,
                );
              }),
            ),
          )),
    );
  }
}
