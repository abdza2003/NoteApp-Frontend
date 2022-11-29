import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Auth/inputTextFaild2.dart';
import 'package:sampleproject/view/widget/Home/createNoteTextInput.dart';

class createNewNotes extends StatefulWidget {
  @override
  State<createNewNotes> createState() => _createNewNotesState();
}

class _createNewNotesState extends State<createNewNotes> {
  int selectedColor = 0;
  TextEditingController textEditingController = new TextEditingController();
  List<Color> folderColor = [
    Colors.orange,
    Colors.purple,
    Colors.lightBlue,
  ];
  List items = ['Desgin', 'Freelence', 'None'];
  String selectItems = 'None';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 240, 240),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            size: 25,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
                onPressed: () async {
                  await await showDialog(
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
                            child: Material(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Note Type',
                                    style: Themes().headline2.copyWith(
                                          color: Colors.black54,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '$selectItems',
                                        style: Themes().headline2.copyWith(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 20),
                                      ),
                                      DropdownButton(
                                        elevation: 0,
                                        items: items
                                            .map(
                                              (val) => DropdownMenuItem(
                                                value: val,
                                                child: Text(
                                                  '$val',
                                                ),
                                              ),
                                            )
                                            .toList(),
                                        onChanged: (val) {
                                          setState(() {
                                            selectItems = val as String;
                                            print('$selectItems');
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Note Color',
                                    style: Themes().headline2.copyWith(
                                          color: Colors.black54,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                              backgroundColor:
                                                  folderColor[index],
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
                                          child: Text('Save'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  );
                },
                icon: Icon(
                  Icons.check_circle_outlined,
                  color: Colors.black,
                  size: 30,
                )),
          )
        ],
        title: Text(
          'Create Note',
          style: Themes().headline2.copyWith(
                fontSize: 20,
                color: Colors.black,
              ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${formatDate(DateTime.now(), [
                      dd,
                      '/',
                      mm,
                      '/',
                      yyyy,
                      '   ',
                      HH,
                      ':',
                      nn
                    ])}',
                style: Themes().headline2.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              createNoteTextInput(
                inputType: TextInputType.name,
                bodyText: 'Title',
                fontStyle: Themes().headline2.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                hintText: 'Note title .',
              ),
              Container(
                width: double.infinity,
                height: 10,
                child: Divider(
                  color: Colors.black26,
                  thickness: 2.4,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              createNoteTextInput(
                bodyText: 'Note',
                fontStyle: Themes().headline2.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                hintText: 'Note .',
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
