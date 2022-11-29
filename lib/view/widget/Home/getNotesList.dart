import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/getHomePages_Controller.dart';
import 'package:sampleproject/controller/Home/homePage_Controller.dart';
import 'package:sampleproject/view/widget/Home/EmptyList.dart';
import 'package:sampleproject/view/widget/Home/showListNote.dart';

class getNotesList extends GetView<HomePageControllerImp> {
  @override
  Widget build(BuildContext context) {
    if (controller.notes.isEmpty) {
      return EmptyList(
        bodyTitle: 'do you not have any notes\n yet .. !!',
        pathImage: 'assets/images/addNote.svg',
      );
    } else {
      return showListNote();
    }
  }
}
