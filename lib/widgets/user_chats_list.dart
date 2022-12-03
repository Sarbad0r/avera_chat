import 'package:avera_chat/helpers/constants.dart';
import 'package:avera_chat/screens/chat_screen.dart';
import 'package:avera_chat/state_managements/home_page_managment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class UserChatsList extends StatelessWidget {
  const UserChatsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homePageManagement = Get.put(HomePageManagement());
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(screenPixel(15)),
                topRight: Radius.circular(screenPixel(15)))),
        child: RefreshIndicator(
          color: appColor,
          onRefresh: () async => [],
          child: ListView(children: [
            const SizedBox(height: 30),
            Scrollbar(
              child: ListView.separated(
                  separatorBuilder: ((context, index) =>
                      Divider(color: Colors.grey[600], thickness: 0.5)),
                  itemCount: 15,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: InkWell(
                            onTap: () => Get.to(ChatScreen()),
                            child: Container(
                              margin:
                                  const EdgeInsets.only(left: 14, right: 14),
                              height: 80,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Row(children: [
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Carmen Mayers',
                                                  style: textStyle(
                                                      Colors.black, 15),
                                                ),
                                                const SizedBox(height: 7),
                                                Text(
                                                  'Carmen Mayers',
                                                  style: textStyle(
                                                      Colors.black, 10,
                                                      weight: FontWeight.w200),
                                                )
                                              ]),
                                        )
                                      ]),
                                    ),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: HexColor('00C000'),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Center(
                                                  child: Text(
                                                '10',
                                                style:
                                                    textStyle(Colors.white, 10),
                                              ))),
                                          const SizedBox(height: 7),
                                          Text(
                                            '1212',
                                            style: textStyle(Colors.grey, 10),
                                          )
                                        ])
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
