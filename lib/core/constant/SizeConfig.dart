import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SizeConfig {
  final BuildContext context;
  SizeConfig(this.context);
  double get heigthScreen => MediaQuery.of(context).size.height;
  double get widthScreen => MediaQuery.of(context).size.width;
}
