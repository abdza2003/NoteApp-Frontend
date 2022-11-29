import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/categoriesScreen_Controller.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Auth/inputTextFaild.dart';
import 'package:sampleproject/view/widget/Auth/inputTextFaild2.dart';
import 'package:sampleproject/view/widget/Auth/myButton.dart';
import 'package:sampleproject/view/widget/Home/getCategoriesList.dart';

class categoriesScreen extends StatefulWidget {
  @override
  State<categoriesScreen> createState() => _categoriesScreenState();
}

class _categoriesScreenState extends State<categoriesScreen> {
  TextEditingController textEditingController = new TextEditingController();

  int selectedColor = 0;

  List<Color> folderColor = [
    Colors.orange,
    Colors.purple,
    Colors.lightBlue,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => categoriesScreenControllerImp());
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 240, 240),
        appBar: AppBar(
          title: Text(
            'Categories',
            style: Themes().headline2.copyWith(
                  fontSize: 20,
                  color: Colors.black,
                ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: ((context, setState) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: SizeConfig(context).heigthScreen / 4.5,
                          ),
                          padding: EdgeInsets.all(30),
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text('adasasdsa'),
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
                                  folderColor.length,
                                  (index) => Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Material(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedColor = index;
                                          });

                                          print('$selectedColor');
                                        },
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: folderColor[index],
                                          child: selectedColor == index
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

                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black45,
                                      ),
                                      onPressed: () {
                                        Get.back();
                                        print('Clodes');
                                      },
                                      child: Text('Close'),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.redAccent,
                                      ),
                                      onPressed: () {
                                        print('Created');
                                      },
                                      child: Text('Create'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.add_circle_outline_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
        body: GetBuilder<categoriesScreenControllerImp>(
          builder: ((controllerImp) {
            return Padding(
              padding: EdgeInsets.all(20),
              child: Stack(
                // alignment: Alignment.topLeft,
                children: [
                  getCategoriesList(),
                ],
              ),
            );
          }),
        ));
  }
}
