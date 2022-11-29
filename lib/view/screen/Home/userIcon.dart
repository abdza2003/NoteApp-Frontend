import 'package:flutter/material.dart';

class userIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      backgroundColor: Colors.black54,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white54,
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.black45,
          child: Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
