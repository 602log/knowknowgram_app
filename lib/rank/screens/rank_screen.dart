import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class RankScreen extends StatefulWidget {
  const RankScreen({super.key});

  @override
  State<RankScreen> createState() => _RankScreenState();
}

class _RankScreenState extends State<RankScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumBlack,
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/736x/51/51/5e/51515e44f4db7b93093611cf3dae99a4.jpg'),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '그랬구나',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFA9C1C0),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  35.0,
                                ),
                                topRight: Radius.circular(
                                  35.0,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: darkGrey,
                                  blurRadius: 20.0,
                                  offset: Offset(5, 0),
                                )
                              ]
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: GoogleFonts.blackHanSans(
                                  color: Colors.black,
                                  fontSize: 50.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/736x/6f/dd/86/6fdd860b0bbf50f0b9a74e767db4b854.jpg'),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '빠져라',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              color: mainMintText,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  35.0,
                                ),
                                topRight: Radius.circular(
                                  35.0,
                                ),
                              ),
                                boxShadow: [
                                  BoxShadow(
                                    color: darkGrey,
                                    blurRadius: 20.0,
                                    offset: Offset(5, 0),
                                  )
                                ]
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: GoogleFonts.blackHanSans(
                                  color: Colors.black,
                                  fontSize: 50.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA3MThfOTkg%2FMDAxNzIxMjkwNDUwNzUw.A9Sd8m20VrZEW1Hm6EE1T2QCg18BF6OAoUrkZ34uWiog.ctZlkc4yPbEyumSFytgTnUHfS8E-5gEMKkyfDSY-BN8g.JPEG%2F%25B4%25D9%25BF%25EE%25B7%25CE%25B5%25E5%25A3%25AD232.jpeg&type=sc960_832'),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '이제 알겠다',
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  35.0,
                                ),
                                topRight: Radius.circular(
                                  35.0,
                                ),
                              ),
                                boxShadow: [
                                  BoxShadow(
                                    color: darkGrey,
                                    blurRadius: 10.0,
                                    offset: Offset(5, 0),
                                  )
                                ]
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: GoogleFonts.blackHanSans(
                                  color: Colors.black,
                                  fontSize: 50.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                border: Border.all(
                  color: mainMintText,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(
                  35.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://i.namu.wiki/i/icK0iZzkZlDEOP6MLwBXsYzojDOK99nLajS4WbfAmoIJ5liI0rHevtBzPVt08lKvt1u7hhiYEt4dlz1XL2lW9XQTxgYkP9HP4-3C7PinFptyVJ4VtTt9redYHtul6LJAXfPKDxxA_E53jXQKpCoecQ.webp',
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '37490',
                        style: GoogleFonts.blackHanSans(
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Text(
                        '도비',
                        style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white.withValues(alpha: 0.2),
                                  width: 1,
                                )
                              )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '4',
                                  style: GoogleFonts.blackHanSans(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '그냥 싫은데! (어떡해...!)',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
              
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white.withValues(alpha: 0.2),
                                      width: 1,
                                    )
                                )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '5',
                                  style: GoogleFonts.blackHanSans(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '이브지옵~~~프!',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
              
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white.withValues(alpha: 0.2),
                                      width: 1,
                                    )
                                )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '6',
                                  style: GoogleFonts.blackHanSans(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '치열하겠는데?',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
              
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white.withValues(alpha: 0.2),
                                      width: 1,
                                    )
                                )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '7',
                                  style: GoogleFonts.blackHanSans(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '됐어요 수혈 안해줘요',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
              
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white.withValues(alpha: 0.2),
                                      width: 1,
                                    )
                                )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '8',
                                  style: GoogleFonts.blackHanSans(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '7점은 너무 많은 것 같고',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
              
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white.withValues(alpha: 0.2),
                                      width: 1,
                                    )
                                )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '9',
                                  style: GoogleFonts.blackHanSans(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '5점은 좀 적은 것 같아서요',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
              
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white.withValues(alpha: 0.2),
                                      width: 1,
                                    )
                                )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '10',
                                  style: GoogleFonts.blackHanSans(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '나 6천원 있어요',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
              
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
