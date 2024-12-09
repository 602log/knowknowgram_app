import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/logic/components/filter_button_widget.dart';
import 'package:knowknowgram_app/logic/components/logic_list_item_widget.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class LogicListScreen extends StatefulWidget {
  LogicListScreen({super.key});

  @override
  State<LogicListScreen> createState() => _LogicListScreenState();
}

class _LogicListScreenState extends State<LogicListScreen> {
  bool recommanded = false;
  bool popularity = false;
  bool created = false;
  int count = 0;
  List<String> item = [
    '칸수',
    '10x10',
    '15x15',
    '20x20',
    '25x25',
    '30x30',
  ];
  bool selected = false;
  String selectedStr = '칸수';

  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumBlack,
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // logic list fliter
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FilterButtonWidget(
                          title: '추천순',
                        ),
                        FilterButtonWidget(
                          title: '인기순',
                        ),
                        FilterButtonWidget(
                          title: '등록일순',
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: selected
                                ? mainMintText
                                : Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: DropdownButton(
                            alignment: AlignmentDirectional.center,
                            padding: EdgeInsets.zero,
                            dropdownColor: mediumBlack,
                            iconSize: 0.0,
                            underline: SizedBox(),
                            isDense: true,
                            hint: Text(
                              selectedStr,
                              style: GoogleFonts.notoSans().copyWith(
                                color: !selected ? Colors.white : mediumBlack,
                              ),
                            ),
                            items: item.map((e) {
                              return DropdownMenuItem(
                                child: Center(
                                  child: Text(
                                    e,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.notoSans().copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                value: e,
                              );
                            }).toList(),
                            onChanged: (dynamic value) {
                              setState(() {
                                print(value);
                                selected = value == '칸수' ? false : true;
                                selectedStr = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // Align(
              //   alignment: Alignment.topCenter,
              //   child: Wrap(
              //     spacing: 20,
              //     runSpacing: 25,
              //     children: logicItem.map((e) {
              //       return Container(
              //         width: 100,
              //         height: 100,
              //         // padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              //         decoration: BoxDecoration(
              //           color: Colors.white.withOpacity(0.1),
              //           borderRadius: BorderRadius.circular(20.0),
              //         ),
              //         child: Center(
              //           child: Text(e['isSuccess'] ? '♕' : e['times'],
              //             style: GoogleFonts.notoSans().copyWith(
              //               color: e['isSuccess'] ? mainMintText : Colors.white,
              //               fontSize: e['isSuccess'] ? 50 : 18.0,
              //               fontWeight: FontWeight.w900,
              //             ),),
              //         ),
              //       );
              //     }).toList(),
              //   ),
              // ),

              // logic item list
              Align(
                alignment: Alignment.topCenter,
                child: Wrap(
                  spacing: 20,
                  runSpacing: 25,
                  children: logicItem.map((e) {
                    return LogicListItemWidget(
                      isSuccess: e['isSuccess'],
                      times: e['times'],
                      like: e['like'],
                      callback: () {
                        Get.toNamed('/play');
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // TODO: 추후 삭제 예정
  List<Map<String, dynamic>> logicItem = [
    {'index': 0, 'times': '10x10', 'like': 5, 'isSuccess': false},
    {'index': 1, 'times': '15x15', 'like': 7, 'isSuccess': false},
    {
      'index': 3,
      'times': '10x10',
      'like': 43,
      'isSuccess': true,
    },
    {'index': 4, 'times': '10x10', 'like': 35, 'isSuccess': false},
    {'index': 5, 'times': '20x20', 'like': 60, 'isSuccess': false},
    {'index': 6, 'times': '30x30', 'like': 33, 'isSuccess': false},
    {'index': 7, 'times': '20x20', 'like': 62, 'isSuccess': false},
    {
      'index': 8,
      'times': '25x25',
      'like': 45,
      'isSuccess': true,
    },
    {
      'index': 9,
      'times': '20x20',
      'like': 2,
      'isSuccess': true,
    },
    {'index': 10, 'times': '10x10', 'like': 2, 'isSuccess': false},
    {'index': 11, 'times': '15x15', 'like': 55, 'isSuccess': false},
    {
      'index': 12,
      'times': '15x15',
      'like': 57,
      'isSuccess': true,
    },
    {'index': 13, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 14, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 15, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 16, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 17, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 18, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 19, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 20, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 21, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 22, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 23, 'times': '25x25', 'like': 78, 'isSuccess': false},
    {'index': 24, 'times': '25x25', 'like': 78, 'isSuccess': false},
  ];
}
