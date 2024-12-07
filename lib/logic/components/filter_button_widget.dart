import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/colors.dart';

class FilterButtonWidget extends StatefulWidget {
  String title;

  FilterButtonWidget({
    super.key,
    required this.title,
  });

  @override
  State<FilterButtonWidget> createState() => _FilterButtonWidgeatState();
}

class _FilterButtonWidgeatState extends State<FilterButtonWidget> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: (){
          setState(() {
            print(check);
            check = !check;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Center(
            child: Text(
              widget.title,
              style: GoogleFonts.notoSans().copyWith(
                color: check! ? mediumBlack : Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: check ? mainMintText : Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30.0)
          ),
        ),
      ),
    );
  }

}
