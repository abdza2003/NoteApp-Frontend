import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Auth/inputTextFaild2.dart';

createNewFolder({
  required BuildContext context,
  required TextEditingController textEditingController,
  required List colorList,
  required int selectColor,
}) async {
  await showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: ((context, setState) {
          return Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(30),
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  child: inputTextFaild2(
                    iconData: Icons.folder,
                    labelText: 'Folder Name',
                    textEditingController: textEditingController,
                    bodyTitle: 'Folder Name',
                    fontColor: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Folder Color',
                  style: Themes().headline2.copyWith(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                Row(
                  children: List.generate(
                    colorList.length,
                    (index) => Padding(
                      padding: EdgeInsets.all(5),
                      child: Material(
                        child: GestureDetector(
                          onTap: () {
                            selectColor = index;
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: colorList[index],
                            child: selectColor == index
                                ? Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )
                                : Container(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      );
    },
  );
}
