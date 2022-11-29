import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/screen/Home/userIcon.dart';

class drawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[200],
        body: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 121, 84),
                    Color.fromARGB(255, 255, 112, 72),
                    Color.fromARGB(255, 255, 117, 79),
                    Color.fromARGB(255, 255, 115, 76),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 45, left: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        userIcon(),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Abdulrahim za',
                              style: Themes().headline2.copyWith(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                            ),
                            Text(
                              '@abdza2003',
                              style: Themes().headline2.copyWith(
                                    color: Colors.white54,
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    drawerButton(
                      title: 'Profile',
                      funcButton: () {},
                      iconData: Icons.person_outline,
                    ),
                    drawerButton(
                      title: 'Categories',
                      funcButton: () {},
                      iconData: Icons.category_outlined,
                    ),
                    drawerButton(
                      title: 'favorite',
                      funcButton: () {},
                      iconData: Icons.favorite_outline,
                    ),
                    drawerButton(
                      title: 'Setting',
                      funcButton: () {},
                      iconData: Icons.settings_outlined,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: drawerButton(
                title: 'Log Out',
                funcButton: () {},
                iconData: Icons.logout_outlined,
              ),
            ),
          ],
        ));
  }

  drawerButton({
    required String title,
    required var funcButton,
    required IconData iconData,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
      child: GestureDetector(
        onTap: funcButton,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$title',
              style: Themes().headline2.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
