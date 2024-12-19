import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:knowknowgram_app/common/circular_paint.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/theme/colors.dart';

import '../components/profile_bottom_sheet_widget.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

// TODO: 내 정보 화면 ver.1
class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumBlack,
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){

                    showModalBottomSheet(
                      isScrollControlled: true,
                        context: context,
                        builder: (_){

                          // TODO: controller 추가 후 진행
                          // return ProfileBottomSheetWidget();

                          // TODO: controller 추가 전 임시
                          return SafeArea(
                            child: Wrap(

                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(35.0,),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: InkWell(
                                                  onTap: (){
                                                    getImage(ImageSource.camera);
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0),),
                                                    ),

                                                    child: Center(
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                                                        child: Text(
                                                          '카메라 선택',
                                                          style: GoogleFonts.notoSans(
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: InkWell(
                                                  onTap: (){
                                                    getImage(ImageSource.gallery);
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0),),
                                                    ),

                                                    child: Center(
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                                                        child: Text(
                                                          '앨범에서 사진 선택',
                                                          style: GoogleFonts.notoSans(
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: InkWell(
                                                  onTap: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(20.0),
                                                    ),

                                                    child: Center(
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                                        child: Text(
                                                          '취소',
                                                          style: GoogleFonts.notoSans(
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
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
                              ],
                            ),
                          );
                    },
                    backgroundColor: Colors.transparent);

                    // getImage(ImageSource.camera);
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Opacity(
                          opacity: 0.7,
                          child: CircleAvatar(
                            radius: 100,
                            backgroundColor: backgroundGrey,
                            // TODO: controller 추가 후 진행
                            backgroundImage: _image != null
                                ? FileImage(File(_image!.path))
                                : NetworkImage('https://i.namu.wiki/i/icK0iZzkZlDEOP6MLwBXsYzojDOK99nLajS4WbfAmoIJ5liI0rHevtBzPVt08lKvt1u7hhiYEt4dlz1XL2lW9XQTxgYkP9HP4-3C7PinFptyVJ4VtTt9redYHtul6LJAXfPKDxxA_E53jXQKpCoecQ.webp',) as ImageProvider,
                            child: Icon(
                              Icons.camera_alt,
                              size: 30.0,
                              color: mainMintText,
                            ),
                          ),
                        ),

                      ),
                      CustomPaint(
                        size: Size(220, 220),
                        painter: CircularPaint(
                          progress: 277 / 372,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '도비',
                    style: GoogleFonts.blackHanSans(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                    overflow: TextOverflow.clip,
                  ),
                  SizedBox(width: 10,),
                  Icon(
                    Icons.edit,
                    color: mainMintText,
                    size: 15.0,
                  ),
                ],
              ),
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
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        '♚ ',
                        style: GoogleFonts.notoSans(
                          color: mainMintText,
                          fontSize: 50.0,
                          height: 1.0,
                        ),
                      ),
                      Text(
                        '37490',
                        style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontSize: 25.0,
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 250.0,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(
                        35.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '내가 쓴 리뷰 확인하기',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white
                                        .withValues(alpha: 0.8),
                                    fontSize: 12.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '→',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white
                                        .withValues(alpha: 0.8),
                                    fontSize: 12.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              '내 리뷰',
                              style: GoogleFonts.blackHanSans(
                                color: mainMintText,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 250.0,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(
                        35.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '내가 만든 로직 확인하기',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white
                                        .withValues(alpha: 0.8),
                                    fontSize: 12.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '→',
                                  style: GoogleFonts.notoSans(
                                    color: Colors.white
                                        .withValues(alpha: 0.8),
                                    fontSize: 12.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              '내 로직',
                              style: GoogleFonts.blackHanSans(
                                color: mainMintText,
                                fontSize: 30.0,
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




          ],
        ),
      ),
    );
  }

  XFile? _image; //이미지를 담을 변수 선언
  final ImagePicker picker = ImagePicker(); //ImagePicker 초기화

  //이미지를 가져오는 함수
  Future getImage(ImageSource imageSource) async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path); //가져온 이미지를 _image에 저장
      });
    }
  }
}
