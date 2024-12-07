import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowknowgram_app/home/views/components/home_container_widget.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGrey,
      appBar: AppBar(
        backgroundColor: backgroundGrey,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('KNOWKNOWGRAM',
                style: GoogleFonts.modak().copyWith(
                  color: mediumBlack,
                  fontSize: 30.0,
                )),
            const Icon(
              Icons.logout,
            )
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // 배너
          Container(
            decoration: const BoxDecoration(
              color: Colors.yellow,
            ),
            height: 80.0,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: const [
                  BoxShadow(
                    color: darkGrey,
                    blurRadius: 15.0,
                    offset: Offset(2, 8),
                  )
                ],
              ),
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.question_mark,
                        size: 100,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                            color: mediumBlack,
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "이어서 풀기",
                                style: GoogleFonts.notoSans(
                                    color: Colors.white, fontSize: 15.0),
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
                    ],
                  ),
                ],
              ),
            ),
          ),

          HomeContainerWidget(
            callBack: () {
              print(
                "노노그램 풀기 누름",
              );
            },
            title: "노노그램 풀기",
            icon: Icons.view_module_outlined,
          ),
          HomeContainerWidget(
            callBack: () {
              print(
                "노노그램 만들기 누름",
              );
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
              print(
                "내정보 누름",
              );
            },
            title: "내정보",
            icon: Icons.face,
          ),
        ],
      ),
    );
  }
}
