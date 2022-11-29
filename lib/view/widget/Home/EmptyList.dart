import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';

class EmptyList extends StatelessWidget {
  String pathImage;
  String bodyTitle;
  EmptyList({
    required this.bodyTitle,
    required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredGrid(
      columnCount: 0,
      position: 0,
      child: ScaleAnimation(
        duration: Duration(milliseconds: 1500),
        child: FadeInAnimation(
          child: Padding(
            padding: EdgeInsets.only(
              top: SizeConfig(context).heigthScreen / 7,
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      '$pathImage',
                      height: MediaQuery.of(context).size.height / (5.2),
                      width: MediaQuery.of(context).size.width / (5.2),
                      color: Color.fromARGB(255, 255, 123, 47),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width / (1.4),
                      child: Text(
                        '$bodyTitle',
                        style: Themes().headline2.copyWith(
                            fontSize:
                                MediaQuery.of(context).size.width / (22.6),
                            color: Colors.black.withOpacity(.6)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
