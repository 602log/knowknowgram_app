import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class HomeContainerWidget extends StatelessWidget {
  String title;
  GestureTapCallback? callBack;
  IconData icon;

  HomeContainerWidget({
    required this.title,
    this.callBack,
    required this.icon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: callBack,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                color: darkGrey,
                blurRadius: 15.0,
                offset: Offset(2, 8),
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.notoSans(
                        color: Colors.black,
                        fontSize : 20.0
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
