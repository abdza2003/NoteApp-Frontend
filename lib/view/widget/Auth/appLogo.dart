import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';

class appLogo extends StatelessWidget {
  double titleSize;
  double thicknessSize;

  appLogo({required this.titleSize, required this.thicknessSize});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig(context).heigthScreen / 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              3,
              ((index) => Transform.translate(
                    offset: Offset(
                      0,
                      index == 0
                          ? 5
                          : index == 1
                              ? 0
                              : -5,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: index == 1 ? 10 : 0,
                      ),
                      child: SizedBox(
                        width: 20,
                        // height: 5,
                        child: Divider(
                          color: Colors.white,
                          thickness: thicknessSize,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          Text(
            'Note App',
            style: Themes()
                .headline1
                .copyWith(fontSize: titleSize, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
