import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class GenerateOptionScreen extends StatefulWidget {
  const GenerateOptionScreen({super.key});

  @override
  State<GenerateOptionScreen> createState() => _GenerateOptionScreenState();
}

class _GenerateOptionScreenState extends State<GenerateOptionScreen> {

  String selectedStr = '칸수';
  List<String> item = [
    '칸수',
    '10x10',
    '15x15',
    '20x20',
    '25x25',
    '30x30',
  ];
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumBlack,
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 15.0),
              decoration: BoxDecoration(
                color: selected
                    ? mainMintText
                    : Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: DropdownButton(
                  alignment: AlignmentDirectional.center,
                  padding: EdgeInsets.zero,
                  dropdownColor: mediumBlack,
                  iconSize: 0.0,
                  underline: SizedBox(),
                  isDense: true,
                  hint: Text(
                    selectedStr,
                    textAlign: TextAlign.center,
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
            ),

            SizedBox(height: 30.0,),

            TextFormField(
              controller: TextEditingController(),
              style: GoogleFonts.notoSans(
                fontSize: 15.0,
              ),
              decoration: InputDecoration(
                hintText: '제목',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35.0,),),
                  borderSide: BorderSide(color: Colors.white,),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35.0,),),
                  borderSide: BorderSide(color: mainMintText,),
                ),
              ),
            ),

            SizedBox(height: 30.0,),
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: mainMintText,
              ),
                onPressed: () {
                  Get.toNamed('/generate');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '로직 만들기',
                        style: GoogleFonts.notoSans(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
