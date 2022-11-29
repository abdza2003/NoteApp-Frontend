import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/categoriesScreen_Controller.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';

class showCategorieList extends GetView<categoriesScreenControllerImp> {
  const showCategorieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig(context).heigthScreen / 14),
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: controller.allCategories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredGrid(
            columnCount: 3,
            duration: Duration(milliseconds: 600),
            position: index,
            child: ScaleAnimation(
              duration: Duration(milliseconds: 800),
              child: FadeInAnimation(
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    // height: 50,
                    // width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (controller.allCategories[index]['cate_color']
                              as Color)
                          .withOpacity(.15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder,
                          size: 100,
                          color: (controller.allCategories[index]['cate_color']
                                  as Color)
                              .withOpacity(.9),
                        ),
                        Text(
                          '${controller.allCategories[index]['cate_name']}',
                          style: Themes().headline2.copyWith(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${controller.allCategories[index]['cate_note_count']} Notes',
                          style: Themes().headline2.copyWith(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
