import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class ProfileBottomSheetWidget extends StatefulWidget {
  const ProfileBottomSheetWidget({super.key});

  @override
  State<ProfileBottomSheetWidget> createState() => _ProfileBottomSheetWidgetState();
}

// TODO: controller 추가 후 진행
class _ProfileBottomSheetWidgetState extends State<ProfileBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
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
