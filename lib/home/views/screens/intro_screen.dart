import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/theme/colors.dart';

import '../../../common/ad_banner.dart';
import '../components/home_container_widget.dart';

class IntroScreen extends StatelessWidget {

  const IntroScreen({super.key});


  @override
  Widget build(BuildContext context) {

    double contentHeight =
        (MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top);
    return Scaffold(
      backgroundColor: mediumBlack,
      appBar: CustomAppbar(),
      body: Container(
        // decoration: BoxDecoration(
        //   color: Colors.white.withOpacity(0.1),
        // ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: contentHeight / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              '☑ 32 게임 완 ☑️',
                              style: GoogleFonts.notoSans(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '도비 님',
                                style: GoogleFonts.blackHanSans(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Icon(
                        Icons.question_mark_rounded,
                        size: contentHeight * 0.3,
                      color: mainMintText,
                      shadows: [
                        BoxShadow(
                          color: darkGrey,
                          blurRadius: 30,
                          offset: Offset(10, 5),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: contentHeight / 4 * 3,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80.0),
                      topLeft: Radius.circular(80.0)),
                  color: mediumBlack,
                  boxShadow: [
                    BoxShadow(
                      color: darkGrey,
                      blurRadius: 30.0,
                      offset: Offset(-5, -1),
                    )
                  ]),
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0),
                        // boxShadow: const [
                        //   BoxShadow(
                        //     color: darkGrey,
                        //     blurRadius: 15.0,
                        //     offset: Offset(2, 8),
                        //   )
                        // ],
                      ),
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                //Icons.tag
                                Icons.view_compact_sharp,
                                size: 100,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: mediumBlack,
                                      borderRadius: BorderRadius.circular(35.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "이어서 풀기",
                                          style: GoogleFonts.notoSans(
                                              color: Colors.white,
                                              fontSize: 15.0),
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white,
                                          size: 15.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: MyBannerAdWidget()
                  ),
                  HomeContainerWidget(
                    callBack: () {
                      Get.toNamed('/logic_list');
                    },
                    title: "노노그램 풀기",
                    icon: Icons.view_compact_outlined,
                  ),
                  HomeContainerWidget(
                    callBack: () {
                      Get.toNamed('/generate');
                    },
                    title: "노노그램 만들기",
                    icon: Icons.app_registration,
                  ),
                  HomeContainerWidget(
                    callBack: () {
                      print(
                        "랭킹 누름",
                      );
                    },
                    title: "랭킹",
                    icon: Icons.stars_rounded,
                  ),
                  HomeContainerWidget(
                    callBack: () {
                      Get.toNamed('/user_info');
                    },
                    title: "내정보",
                    icon: Icons.face,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
