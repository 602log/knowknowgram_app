import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/colors.dart';

class LogicListItemWidget extends StatefulWidget {
  bool isSuccess;
  String times;
  int like;
  GestureTapCallback callback;

  LogicListItemWidget({
    super.key,
    required this.isSuccess,
    required this.times,
    required this.like,
    required this.callback,
  });

  @override
  State<LogicListItemWidget> createState() => _LogicListItemWidgetState();
}

class _LogicListItemWidgetState extends State<LogicListItemWidget> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: widget.callback,
              child: Container(
                width: 100,
                height: 100,
                // padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    widget.isSuccess ? '♕' : widget.times,
                    style: GoogleFonts.notoSans().copyWith(
                      color: widget.isSuccess ? mainMintText : Colors.white,
                      fontSize: widget.isSuccess ? 50 : 18.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: Icon(
                !isClicked ? Icons.favorite_outline : Icons.favorite,
                size: 13.0,
                color: mainMintText,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.like.toString(),
              style: GoogleFonts.notoSans().copyWith(
                color: Colors.white,
                fontSize: 13.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
