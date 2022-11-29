import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';

class ListContainer extends StatelessWidget {
  Color color;
  String title;
  String body;
  String categories_type;
  String date;
  int indexList;
  int lengthList;
  ListContainer({
    required this.color,
    required this.title,
    required this.body,
    required this.categories_type,
    required this.date,
    required this.indexList,
    required this.lengthList,
  });
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      duration: Duration(milliseconds: 1000),
      position: indexList,
      child: SlideAnimation(
        horizontalOffset: 200,
        child: FadeInAnimation(
          child: Container(
            margin: EdgeInsets.only(
              bottom: indexList == lengthList - 1
                  ? SizeConfig(context).heigthScreen / 8.5
                  : 0,
            ),
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.orange, width: 1),
              color: color as Color,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: Themes().headline2.copyWith(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '$body',
                  style: Themes().headline2.copyWith(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$categories_type'),
                    Text('$date'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
