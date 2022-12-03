import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

TextStyle textStyle(Color color, double size,
    {FontWeight weight = FontWeight.normal}) {
  return TextStyle(color: color, fontSize: size, fontWeight: weight);
}

final appColor = HexColor('00C000');

final double screenSize = Get.context!.height;

double screenPixel(double size) {
  double getSize = screenSize / size;
  double pixel = screenSize / getSize;
  return pixel;
}

dynamic pushNav(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

List<String> appBarBottomList = ['Чаты', 'Пользователи', 'Еще'];

BorderRadius leftBorderRadius() {
  return const BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
      bottomRight: Radius.circular(15));
}

BorderRadius rigthBorderRadius() {
  return const BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
      bottomLeft: Radius.circular(15));
}
