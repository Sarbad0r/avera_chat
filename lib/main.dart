import 'package:avera_chat/helpers/constants.dart';
import 'package:avera_chat/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
      color: appColor, debugShowCheckedModeBanner: false, home: HomePage()));
}