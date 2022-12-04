import 'package:avera_chat/helpers/constants.dart';
import 'package:avera_chat/helpers/shared_prefer.dart';
import 'package:avera_chat/pages/home_page.dart';
import 'package:avera_chat/state_managements/home_page_managment.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefer.init();
  // await PusherConn().init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<HomePageProvider>(
          create: (context) => HomePageProvider())
    ],
    child: GetMaterialApp(
        color: appColor,
        debugShowCheckedModeBanner: false,
        home: const HomePage()),
  ));
}
