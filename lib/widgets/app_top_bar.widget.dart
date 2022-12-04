import 'package:avera_chat/api/rest_api_chat/rest_api_chat.dart';
import 'package:avera_chat/helpers/constants.dart';
import 'package:avera_chat/state_managements/home_page_managment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppTopBar extends StatefulWidget {
  const AppTopBar({Key? key}) : super(key: key);

  @override
  State<AppTopBar> createState() => _AppTopBarState();
}

class _AppTopBarState extends State<AppTopBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomePageProvider>(context, listen: false).reciveMessage();
    Provider.of<HomePageProvider>(context, listen: false).initChannel();
  }

  @override
  Widget build(BuildContext context) {
    var homePageProvider = Provider.of<HomePageProvider>(context);
    return Container(
        margin: EdgeInsets.only(bottom: screenPixel(40)),
        padding: EdgeInsets.only(left: screenPixel(10), right: screenPixel(10)),
        color: appColor,
        child: Column(children: [
          SizedBox(height: screenPixel(30)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Сообщении (32)',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 23)),
            IconButton(
                onPressed: () => homePageProvider.reciveMessage(),
                icon: Icon(
                  Icons.search,
                  size: screenPixel(25),
                  color: Colors.white,
                ))
          ]),
          const SizedBox(height: 20),
          SizedBox(
            height: screenPixel(30),
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
                itemCount: appBarBottomList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        appBarBottomList[index],
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
          ),
        ]));
  }
}
