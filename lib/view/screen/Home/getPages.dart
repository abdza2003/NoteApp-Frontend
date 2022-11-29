import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Home/getHomePages_Controller.dart';
import 'package:sampleproject/main.dart';

class getHomePages extends StatefulWidget {
  @override
  State<getHomePages> createState() => _getHomePagesState();
}

class _getHomePagesState extends State<getHomePages> {
  getHomePagesControllerImp gethomeImp = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        gethomeImp.pagesInf[gethomeImp.pageIndex]['page'] as Widget,
        Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 105, 63),
                Color.fromARGB(255, 255, 101, 58),
                Color.fromARGB(255, 252, 100, 58),
                Color.fromARGB(255, 255, 110, 70),
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              gethomeImp.pagesInf.length,
              (index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 40,
                    height: gethomeImp.pageIndex == index ? 10 : 0,
                    decoration: BoxDecoration(
                      color: gethomeImp.pageIndex == index
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {});
                      gethomeImp.changePageIndex(index);
                    },
                    icon: Icon(
                      gethomeImp.pageIndex == index
                          ? gethomeImp.pagesInf[index]['selectPage_icon']
                              as IconData
                          : gethomeImp.pagesInf[index]['page_icon'] as IconData,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
