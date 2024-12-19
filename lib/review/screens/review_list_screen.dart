import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class ReviewListScreen extends StatefulWidget {
  const ReviewListScreen({super.key});

  @override
  State<ReviewListScreen> createState() => _ReviewListScreenState();
}

class _ReviewListScreenState extends State<ReviewListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumBlack,
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 32,),
          child: Column(
            children: [
              Row(
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '내가 리뷰 총 ',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 30.0,
                        )),
                    TextSpan(
                        text: '7',
                        style: GoogleFonts.blackHanSans(
                          color: mainMintText,
                          fontSize: 30.0,
                        )),
                    TextSpan(
                        text: '개',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 30.0,
                        )),
                  ])),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Container(
                  padding: EdgeInsets.all(
                    16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '기린 로직',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                      Row(
                        children: [
                          Text(
                            '진짜 너무 어려워요ㅜㅜㅠㅠ \n 쉬운 것 좀 올려주세요!!!',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '2024/11/21',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Container(
                  padding: EdgeInsets.all(
                    16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '공원 로직',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                      Row(
                        children: [
                          Text(
                            '노잼',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '2024/10/2',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Container(
                  padding: EdgeInsets.all(
                    16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '키보드 로직',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                      Row(
                        children: [
                          Text(
                            '리뷰 안 달려고 했는데 달아봄',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '2024/9/1',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Container(
                  padding: EdgeInsets.all(
                    16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '판다 로직',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                      Row(
                        children: [
                          Text(
                            '오랜만에 풀었더니 오래 걸리네여',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '2024/8/19',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Container(
                  padding: EdgeInsets.all(
                    16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '궁 로직',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                      Row(
                        children: [
                          Text(
                            '진짜 너무 어렵다....',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '2024/3/27',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Container(
                  padding: EdgeInsets.all(
                    16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '별 로직',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                      Row(
                        children: [
                          Text(
                            '난이도 조절 좀?',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '2024/3/22',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Container(
                  padding: EdgeInsets.all(
                    16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '처음 만든 로직',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                      Row(
                        children: [
                          Text(
                            '제일 빨리 푼 문제임.',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '2024/1/5',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
